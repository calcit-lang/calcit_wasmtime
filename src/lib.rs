use wasmtime::{Config, Engine, Instance, Module, Store};

use cirru_edn::Edn;
use cirru_parser::{Cirru, format_to_lisp};
use std::ffi::c_char;
use std::panic::{AssertUnwindSafe, catch_unwind};
use std::{mem, ptr, slice};

static FFI_BUILD_ID: &[u8] = concat!(env!("CALCIT_FFI_BUILD_ID"), "\0").as_bytes();

#[unsafe(no_mangle)]
pub extern "C" fn calcit_ffi_build_id() -> *const c_char {
  FFI_BUILD_ID.as_ptr().cast()
}

#[repr(C)]
pub struct CalcitFfiBuffer {
  ptr: *mut u8,
  len: usize,
  cap: usize,
}

#[unsafe(no_mangle)]
pub extern "C" fn calcit_ffi_buffer_version() -> u32 {
  1
}

#[unsafe(no_mangle)]
/// Release a response allocated by this module's v1 Calcit FFI adapter.
///
/// # Safety
///
/// `buffer` must be returned unchanged by a v1 adapter in this same dylib and
/// must not have been freed previously.
pub unsafe extern "C" fn calcit_ffi_buffer_free(buffer: CalcitFfiBuffer) {
  if buffer.ptr.is_null() {
    return;
  }
  // SAFETY: this function only receives buffers allocated by `write_buffer`
  // in this dylib, with their original length and capacity.
  drop(unsafe { Vec::from_raw_parts(buffer.ptr, buffer.len, buffer.cap) });
}

fn write_buffer(output: *mut CalcitFfiBuffer, bytes: Vec<u8>) -> Result<(), String> {
  if output.is_null() {
    return Err("Calcit FFI output pointer is null".to_owned());
  }
  let mut bytes = bytes;
  let buffer = CalcitFfiBuffer {
    ptr: bytes.as_mut_ptr(),
    len: bytes.len(),
    cap: bytes.capacity(),
  };
  mem::forget(bytes);
  // SAFETY: the caller provided a writable out pointer for one buffer value.
  unsafe { ptr::write(output, buffer) };
  Ok(())
}

unsafe fn call_with_buffer(
  request_ptr: *const u8,
  request_len: usize,
  output: *mut CalcitFfiBuffer,
  f: fn(Vec<Edn>) -> Result<Edn, String>,
) -> i32 {
  let result = catch_unwind(AssertUnwindSafe(|| {
    if request_ptr.is_null() && request_len != 0 {
      return Err("Calcit FFI request pointer is null".to_owned());
    }
    let request = if request_len == 0 {
      &[]
    } else {
      // SAFETY: the host retains the request allocation for the duration of
      // this synchronous call and provides exactly `request_len` bytes.
      unsafe { slice::from_raw_parts(request_ptr, request_len) }
    };
    let source = std::str::from_utf8(request).map_err(|error| format!("Calcit FFI request is not UTF-8: {error}"))?;
    let data = cirru_edn::parse(source).map_err(|error| format!("failed to parse Calcit FFI request: {error}"))?;
    let Edn::List(args) = data else {
      return Err(format!("Calcit FFI request must be an EDN list, got {}", data.type_name()));
    };
    f(args.0)
  }));

  let (status, bytes) = match result {
    Ok(Ok(value)) => match cirru_edn::format(&value, true) {
      Ok(source) => (0, source.into_bytes()),
      Err(error) => (2, format!("failed to encode Calcit FFI response: {error}").into_bytes()),
    },
    Ok(Err(error)) => (1, error.into_bytes()),
    Err(_) => (2, b"panic inside Calcit FFI module".to_vec()),
  };
  if write_buffer(output, bytes).is_err() { 2 } else { status }
}

#[unsafe(no_mangle)]
pub fn abi_version() -> String {
  String::from("0.0.9")
}

#[unsafe(no_mangle)]
pub fn edn_version() -> String {
  cirru_edn::version().to_owned()
}

/// only implement very simple rules turning symbols in to lisp, NOT SOLID
#[unsafe(no_mangle)]
pub fn format_to_wat(args: Vec<Edn>) -> Result<Edn, String> {
  println!("code: {:?}", args);

  let mut lines: Vec<Cirru> = vec![];

  for x in args {
    lines.push(edn_to_cirru(&x)?);
  }

  Ok(Edn::str(format_to_lisp(&lines)?))
}

#[unsafe(no_mangle)]
/// Call `format_to_wat` through Calcit FFI buffer protocol v1.
///
/// # Safety
///
/// `request_ptr` must reference `request_len` readable bytes for this call,
/// and `output` must point to writable storage for one `CalcitFfiBuffer`.
pub unsafe extern "C" fn format_to_wat_calcit_ffi_v1(request_ptr: *const u8, request_len: usize, output: *mut CalcitFfiBuffer) -> i32 {
  // SAFETY: the export contract forwards the caller's validated buffers.
  unsafe { call_with_buffer(request_ptr, request_len, output, format_to_wat) }
}

/// currently on i64 is demoed
#[unsafe(no_mangle)]
pub fn run_wat(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() != 3 {
    return Err(format!("expected 3 arguments, got {}... {:?}", args.len(), args));
  }

  let (wat, f_name, n) = match (&args[0], &args[1], &args[2]) {
    (Edn::Str(code), Edn::Str(f_name), Edn::Number(n)) => ((**code).to_owned(), f_name, n),
    (Edn::Quote(code), Edn::Str(f_name), Edn::Number(n)) => match code {
      Cirru::Leaf(_) => return Err(format!("expected expression, got: {}", code)),
      Cirru::List(xs) => {
        let mut lines: Vec<Cirru> = vec![];

        for x in xs {
          lines.push(x.to_owned());
        }
        (format_to_lisp(&lines)?, f_name, n)
      }
    },
    (_, _, _) => return Err(format!("expected wat and initial number, got: {} {}", args[0], args[1])),
  };

  print!("wat: {}", wat);

  let config = Config::default().wasm_function_references(true).wasm_gc(true).to_owned();
  let engine = Engine::new(&config).map_err(|e| format!("engine failed: {}", e))?;
  let module = Module::new(&engine, wat).map_err(|e| format!("loading wat: {:?}", e))?;

  let mut store = Store::new(&engine, 0);

  let instance = Instance::new(&mut store, &module, &[]).map_err(|e| format!("instance failed: {}", e))?;
  let entry_fn = instance
    .get_typed_func::<i64, i64>(&mut store, f_name)
    .map_err(|e| format!("get entry failed: {}", e))?;

  let ret = entry_fn
    .call(&mut store, *n as i64) // with an parameter of i64
    .map_err(|e| format!("falled call: {}", e))?;

  Ok(Edn::Number(ret as f64))
}

#[unsafe(no_mangle)]
/// Call `run_wat` through Calcit FFI buffer protocol v1.
///
/// # Safety
///
/// `request_ptr` must reference `request_len` readable bytes for this call,
/// and `output` must point to writable storage for one `CalcitFfiBuffer`.
pub unsafe extern "C" fn run_wat_calcit_ffi_v1(request_ptr: *const u8, request_len: usize, output: *mut CalcitFfiBuffer) -> i32 {
  // SAFETY: the export contract forwards the caller's validated buffers.
  unsafe { call_with_buffer(request_ptr, request_len, output, run_wat) }
}

// quoted code in edn, into Cirru nodes
fn edn_to_cirru(expr: &Edn) -> Result<Cirru, String> {
  match expr {
    Edn::List(xs) => {
      let mut ys: Vec<Cirru> = vec![];
      for x in xs {
        ys.push(edn_to_cirru(x)?);
      }
      Ok(Cirru::List(ys))
    }
    // just use bare symbol...
    Edn::Symbol(s) => Ok(Cirru::leaf(format!("{}", *s))),
    Edn::Str(s) => Ok(Cirru::leaf(format!("|{}", *s))),
    Edn::Tag(k) => Ok(Cirru::leaf(format!("|{}", k))),
    Edn::Bool(b) => Ok(Cirru::leaf(format!("{}", b))),

    Edn::Number(n) => Ok(Cirru::leaf(format!("{}", n))),
    Edn::Nil => Ok(Cirru::leaf("nil")),
    Edn::Quote(q) => Ok(q.to_owned()),
    _ => Err(format!("unexpected edn data for Cirru: {}", expr)),
  }
}

#[cfg(test)]
mod ffi_buffer_tests {
  use super::{CalcitFfiBuffer, calcit_ffi_buffer_free, run_wat_calcit_ffi_v1};
  use cirru_edn::{Edn, EdnListView};
  use std::{ptr, slice};

  fn call_run_wat(args: Vec<Edn>) -> (i32, String) {
    let request = cirru_edn::format(&Edn::List(EdnListView(args)), true)
      .expect("format request")
      .into_bytes();
    let mut output = CalcitFfiBuffer {
      ptr: ptr::null_mut(),
      len: 0,
      cap: 0,
    };
    // SAFETY: request and output storage remain valid for the synchronous call.
    let status = unsafe { run_wat_calcit_ffi_v1(request.as_ptr(), request.len(), &mut output) };
    let bytes = if output.len == 0 {
      Vec::new()
    } else {
      // SAFETY: the adapter returned this initialized response and it remains
      // owned by the module until the free call below.
      unsafe { slice::from_raw_parts(output.ptr, output.len) }.to_vec()
    };
    // SAFETY: `output` came from this module and has not been freed.
    unsafe { calcit_ffi_buffer_free(output) };
    (status, String::from_utf8(bytes).expect("UTF-8 response"))
  }

  #[test]
  fn buffer_adapter_round_trips_a_successful_call() {
    let wat = "(module (func (export \"main\") (param i64) (result i64) local.get 0 i64.const 14 i64.add))";
    let (status, response) = call_run_wat(vec![Edn::str(wat), Edn::str("main"), Edn::Number(13.0)]);
    assert_eq!(status, 0);
    assert_eq!(cirru_edn::parse(&response).expect("response EDN"), Edn::Number(27.0));
  }

  #[test]
  fn buffer_adapter_returns_business_errors_without_unwinding() {
    let (status, response) = call_run_wat(vec![]);
    assert_eq!(status, 1);
    assert!(response.contains("expected 3 arguments"), "response: {response}");
  }
}
