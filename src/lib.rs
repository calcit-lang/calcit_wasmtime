mod s_expr;

use s_expr::format_expr;

use wasmtime::{Engine, Instance, Module, Store};

use cirru_parser::Cirru;

pub fn format_to_wast(xs: &[Cirru]) -> Result<String, String> {
  let mut content: String = String::from("\n");

  for expr in xs {
    content = format!("{}{}\n", content, format_expr(expr, 0)?);
  }

  Ok(content)
}

pub fn run_wat(wat: &str) -> Result<String, String> {
  let engine = Engine::default();

  let module = Module::new(&engine, wat).map_err(|e| format!("{}", e))?;

  let mut store = Store::new(&engine, 4);

  let instance = Instance::new(&mut store, &module, &[]).map_err(|e| format!("{}", e))?;
  let entry_fn = instance
    .get_typed_func::<i64, i64, _>(&mut store, "main")
    .map_err(|e| format!("{}", e))?;

  // And finally we can call the wasm!
  let ret = entry_fn
    .call(&mut store, 100)
    .map_err(|e| format!("{}", e))?;

  Ok(format!("{}", ret))
}
