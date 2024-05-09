use calcit_wasmtime::{format_to_wat, run_wat};
use cirru_edn::Edn;
use cirru_parser::Cirru;

const DEMO: &str = r#"
(module
  ;; (type (struct (field i8 i8 i8 i8)))
  (func (export "main") (param i64) (result i64)
    local.get 0
    i64.const 3
    i64.add
    return)
)
"#;

fn main() -> Result<(), String> {
  let tree = vec![Cirru::leaf("call"), Cirru::leaf("f")];
  let code = format_to_wat(vec![Edn::Quote(Cirru::List(tree))])?;
  println!("{}", code);

  println!("{}", run_wat(vec![Edn::str(DEMO), Edn::Number(44.0)])?);

  Ok(())
}
