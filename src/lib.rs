use wasmtime::{Engine, Instance, Module, Store};

use cirru_edn::Edn;
use cirru_parser::{format_to_lisp, Cirru};

#[no_mangle]
pub fn abi_version() -> String {
  String::from("0.0.5")
}

/// only implement very simple rules turning symbols in to lisp, NOT SOLID
#[no_mangle]
pub fn format_to_wat(args: Vec<Edn>) -> Result<Edn, String> {
  println!("code: {:?}", args);

  let mut lines: Vec<Cirru> = vec![];

  for x in args {
    lines.push(edn_to_cirru(&x)?);
  }

  Ok(Edn::str(format_to_lisp(lines)?))
}

/// currently on i64 is demoed
#[no_mangle]
pub fn run_wat(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() != 2 {
    return Err(format!(
      "expected 2 arguments, got {}... {:?}",
      args.len(),
      args
    ));
  }

  match (&args[0], &args[1]) {
    (Edn::Str(wat), Edn::Number(n)) => {
      let engine = Engine::default();

      let module = Module::new(&engine, &**wat).map_err(|e| format!("{}", e))?;

      let mut store = Store::new(&engine, 0);

      let instance = Instance::new(&mut store, &module, &[]).map_err(|e| format!("{}", e))?;
      let entry_fn = instance
        .get_typed_func::<i64, i64, _>(&mut store, "main")
        .map_err(|e| format!("{}", e))?;

      let ret = entry_fn
        .call(&mut store, *n as i64) // with an parameter of i64
        .map_err(|e| format!("{}", e))?;

      Ok(Edn::Number(ret as f64))
    }
    (_, _) => Err(format!(
      "expected wat and initial number, got: {} {}",
      args[0], args[1]
    )),
  }
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
    Edn::Keyword(k) => Ok(Cirru::leaf(format!("|{}", k.to_str()))),
    Edn::Bool(b) => Ok(Cirru::leaf(format!("{}", b))),

    Edn::Number(n) => Ok(Cirru::leaf(format!("{}", n))),
    Edn::Nil => Ok(Cirru::leaf("nil")),
    Edn::Quote(q) => Ok(q.to_owned()),
    _ => Err(format!("unexpected edn data for Cirru: {}", expr)),
  }
}
