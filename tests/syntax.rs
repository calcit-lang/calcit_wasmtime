extern crate calcit_wasmtime;

use calcit_wasmtime::format_to_wat;
use cirru_edn::Edn;
use cirru_parser::{parse, Cirru};

#[test]
fn format_tests() -> Result<(), String> {
  assert_eq!(
    format_to_wat(vec![Edn::Quote(Cirru::List(vec![Cirru::leaf("a"), Cirru::leaf("b"),]))])?,
    Edn::str("\n(a b)\n")
  );

  assert_eq!(
    format_to_wat(vec![Edn::Quote(Cirru::List(vec![
      Cirru::leaf("a"),
      Cirru::leaf("b"),
      Cirru::List(vec![Cirru::leaf("c"), Cirru::leaf("d"),])
    ]))])?,
    Edn::str("\n(a b (c d))\n")
  );

  assert_eq!(
    format_to_wat(vec![Edn::Quote(Cirru::List(vec![
      Cirru::leaf("a"),
      Cirru::leaf("b"),
      Cirru::List(vec![
        Cirru::leaf("c"),
        Cirru::leaf("d"),
        Cirru::List(vec![Cirru::leaf("e"), Cirru::leaf("f"),])
      ])
    ]))])?,
    Edn::str("\n(a b\n  (c d (e f)))\n")
  );

  assert_eq!(
    format_to_wat(vec![Edn::Quote(Cirru::List(vec![Cirru::leaf("a"), Cirru::leaf("|b"),]))])?,
    Edn::str("\n(a \"b\")\n")
  );

  assert_eq!(
    format_to_wat(vec![Edn::Quote(Cirru::List(vec![Cirru::leaf("a"), Cirru::leaf("|b c"),]))])?,
    Edn::str("\n(a \"b c\")\n")
  );

  Ok(())
}

const COMMENT_1: &str = r#"
(a b
  ;; d
  )
"#;
const COMMENT_2: &str = r#"
(a b
  ;; d
  (e f))
"#;

#[test]
fn comment_tests() -> Result<(), String> {
  assert_eq!(
    format_to_wat(vec![Edn::Quote(Cirru::List(vec![
      Cirru::leaf("a"),
      Cirru::leaf("b"),
      Cirru::List(vec![Cirru::leaf(";"), Cirru::leaf("d"),])
    ]))])?,
    Edn::str(COMMENT_1)
  );

  assert_eq!(
    format_to_wat(vec![Edn::Quote(Cirru::List(vec![
      Cirru::leaf("a"),
      Cirru::leaf("b"),
      Cirru::List(vec![Cirru::leaf(";"), Cirru::leaf("d"),]),
      Cirru::List(vec![Cirru::leaf("e"), Cirru::leaf("f"),])
    ]))])?,
    Edn::str(COMMENT_2)
  );

  Ok(())
}

const SIMPLE_CODE: &str = r#"
(func $get_16 (result i32) (i32.const 16))
"#;

const BIGGER_CODE_CIRRU: &str = r#"
func $sum_struct_create
  param $sum_struct_ptr i32
  param $var$a i32
  param $var$b i32
  ;; "c// sum_struct_ptr->a = a;"

  i32.store
    local.get $sum_struct_ptr
    local.get $var$a

  ;; "c// sum_struct_ptr->b = b;"
  i32.store offset=4
    local.get $sum_struct_ptr
    local.get $var$b
"#;

const BIGGER_CODE: &str = r#"
(func $sum_struct_create (param $sum_struct_ptr i32) (param $var$a i32) (param $var$b i32)
  ;; "c// sum_struct_ptr->a = a;"
  (i32.store (local.get $sum_struct_ptr) (local.get $var$a))
  ;; "c// sum_struct_ptr->b = b;"
  (i32.store offset=4 (local.get $sum_struct_ptr) (local.get $var$b)))
"#;

#[test]
fn format_wast_tests() -> Result<(), String> {
  assert_eq!(
    format_to_wat(vec![Edn::Quote(Cirru::List(vec![
      Cirru::leaf("func"),
      Cirru::leaf("$get_16"),
      Cirru::List(vec![Cirru::leaf("result"), Cirru::leaf("i32"),]),
      Cirru::List(vec![Cirru::leaf("i32.const"), Cirru::leaf("16"),]),
    ]))])?,
    Edn::str(SIMPLE_CODE)
  );

  assert_eq!(
    format_to_wat(vec![Edn::Quote(parse(BIGGER_CODE_CIRRU)?.first().unwrap().to_owned())])?,
    Edn::str(String::from(BIGGER_CODE))
  );

  Ok(())
}
