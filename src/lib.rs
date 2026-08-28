use wasmtime::{Config, Engine, Instance, Module, Store};

use cirru_edn::Edn;
use cirru_parser::{Cirru, format_to_lisp};

calcit_native_ffi::export_buffer_abi_v1!();

/// only implement very simple rules turning symbols in to lisp, NOT SOLID
pub fn format_to_wat(args: Vec<Edn>) -> Result<Edn, String> {
  println!("code: {:?}", args);

  let mut lines: Vec<Cirru> = vec![];

  for x in args {
    lines.push(edn_to_cirru(&x)?);
  }

  Ok(Edn::str(format_to_lisp(&lines)?))
}

calcit_native_ffi::export_edn_buffer_method_v1!(format_to_wat_calcit_ffi_v1, format_to_wat);

/// currently on i64 is demoed
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

calcit_native_ffi::export_edn_buffer_method_v1!(run_wat_calcit_ffi_v1, run_wat);

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
  use super::{calcit_ffi_buffer_free, run_wat_calcit_ffi_v1};
  use calcit_native_ffi::CalcitFfiBuffer;
  use cirru_edn::{Edn, EdnListView};
  use std::slice;

  fn call_run_wat(args: Vec<Edn>) -> (i32, String) {
    let request = cirru_edn::format(&Edn::List(EdnListView(args)), true)
      .expect("format request")
      .into_bytes();
    let mut output = CalcitFfiBuffer::empty();
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
