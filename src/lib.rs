mod s_expr;

use s_expr::format_expr;

use wasmtime::{Engine, Instance, Module, Store};

use cirru_parser::Cirru;

#[no_mangle]
pub fn format_to_wat(xs: Vec<Cirru>) -> Result<String, String> {
  let mut content: String = String::from("\n");

  for expr in xs {
    content = format!("{}{}\n", content, format_expr(&expr, 0)?);
  }

  Ok(content)
}

/// currently on i64 is demoed
#[no_mangle]
pub fn run_wat(wat: String, n: i64) -> Result<i64, String> {
  let engine = Engine::default();

  let module = Module::new(&engine, &wat).map_err(|e| format!("{}", e))?;

  let mut store = Store::new(&engine, 0);

  let instance = Instance::new(&mut store, &module, &[]).map_err(|e| format!("{}", e))?;
  let entry_fn = instance
    .get_typed_func::<i64, i64, _>(&mut store, "main")
    .map_err(|e| format!("{}", e))?;

  let ret = entry_fn
    .call(&mut store, n) // with an parameter of i64
    .map_err(|e| format!("{}", e))?;

  Ok(ret)
}
