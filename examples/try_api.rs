use calcit_wasmtime::{format_to_wat, run_wat};
use cirru_parser::Cirru;

const DEMO: &str = r#"
(module
  (func (export "main") (param i64) (result i64)
    get_local 0
    i64.const 3
    i64.add
    return)
)
"#;

fn main() -> Result<(), String> {
  let tree = vec![Cirru::List(vec![
    Cirru::Leaf(String::from("call")),
    Cirru::Leaf(String::from("f")),
  ])];
  let code = format_to_wat(tree)?;
  println!("{}", code);

  println!("{}", run_wat(DEMO.to_owned(), 44)?);

  Ok(())
}
