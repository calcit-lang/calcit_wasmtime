mod s_expr;

use s_expr::format_expr;

use wasmtime::{Engine, Instance, Module, Store};

use cirru_edn::Edn;
use cirru_parser::Cirru;

#[no_mangle]
pub fn abi_version() -> String {
  String::from("0.0.5")
}

#[no_mangle]
pub fn format_to_wat(args: Vec<Edn>) -> Result<Edn, String> {
  if args.len() != 1 {
    return Err(format!("expected 1 argument, {:?}", args));
  }

  println!("code: {:?}", args);

  match &args[0] {
    Edn::Quote(xs) => match xs {
      Cirru::Leaf { .. } => Err(format!("Unknown code: {}", xs)),
      Cirru::List(xs) => {
        let mut content: String = String::from("\n");
        for expr in xs {
          content = format!("{}{}\n", content, format_expr(expr, 0)?);
        }
        Ok(Edn::str(content))
      }
    },
    a => Err(format!("expected tree, got leaf: {}", a)),
  }
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
