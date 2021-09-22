extern crate calcit_wasmtime;

use calcit_wasmtime::format_to_wat;
use cirru_parser::{parse, Cirru};

#[test]
fn format_tests() -> Result<(), String> {
  assert_eq!(
    format_to_wat(vec![Cirru::List(vec![
      Cirru::Leaf(String::from("a")),
      Cirru::Leaf(String::from("b")),
    ])])?,
    String::from("\n(a b)\n")
  );

  assert_eq!(
    format_to_wat(vec![Cirru::List(vec![
      Cirru::Leaf(String::from("a")),
      Cirru::Leaf(String::from("b")),
      Cirru::List(vec![
        Cirru::Leaf(String::from("c")),
        Cirru::Leaf(String::from("d")),
      ])
    ])])?,
    String::from("\n(a b (c d))\n")
  );

  assert_eq!(
    format_to_wat(vec![Cirru::List(vec![
      Cirru::Leaf(String::from("a")),
      Cirru::Leaf(String::from("b")),
      Cirru::List(vec![
        Cirru::Leaf(String::from("c")),
        Cirru::Leaf(String::from("d")),
        Cirru::List(vec![
          Cirru::Leaf(String::from("e")),
          Cirru::Leaf(String::from("f")),
        ])
      ])
    ])])?,
    String::from("\n(a b\n  (c d (e f)))\n")
  );

  assert_eq!(
    format_to_wat(vec![Cirru::List(vec![
      Cirru::Leaf(String::from("a")),
      Cirru::Leaf(String::from("|b")),
    ])])?,
    String::from("\n(a \"b\")\n")
  );

  assert_eq!(
    format_to_wat(vec![Cirru::List(vec![
      Cirru::Leaf(String::from("a")),
      Cirru::Leaf(String::from("|b c")),
    ])])?,
    String::from("\n(a \"b c\")\n")
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
    format_to_wat(vec![Cirru::List(vec![
      Cirru::Leaf(String::from("a")),
      Cirru::Leaf(String::from("b")),
      Cirru::List(vec![
        Cirru::Leaf(String::from(";")),
        Cirru::Leaf(String::from("d")),
      ])
    ])])?,
    String::from(COMMENT_1)
  );

  assert_eq!(
    format_to_wat(vec![Cirru::List(vec![
      Cirru::Leaf(String::from("a")),
      Cirru::Leaf(String::from("b")),
      Cirru::List(vec![
        Cirru::Leaf(String::from(";")),
        Cirru::Leaf(String::from("d")),
      ]),
      Cirru::List(vec![
        Cirru::Leaf(String::from("e")),
        Cirru::Leaf(String::from("f")),
      ])
    ])])?,
    String::from(COMMENT_2)
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
    get_local $sum_struct_ptr
    get_local $var$a

  ;; "c// sum_struct_ptr->b = b;"
  i32.store offset=4
    get_local $sum_struct_ptr
    get_local $var$b
"#;

const BIGGER_CODE: &str = r#"
(func $sum_struct_create (param $sum_struct_ptr i32) (param $var$a i32) (param $var$b i32)
  ;; "c// sum_struct_ptr->a = a;"
  (i32.store (get_local $sum_struct_ptr) (get_local $var$a))
  ;; "c// sum_struct_ptr->b = b;"
  (i32.store offset=4 (get_local $sum_struct_ptr) (get_local $var$b)))
"#;

#[test]
fn format_wast_tests() -> Result<(), String> {
  assert_eq!(
    format_to_wat(vec![Cirru::List(vec![
      Cirru::Leaf(String::from("func")),
      Cirru::Leaf(String::from("$get_16")),
      Cirru::List(vec![
        Cirru::Leaf(String::from("result")),
        Cirru::Leaf(String::from("i32")),
      ]),
      Cirru::List(vec![
        Cirru::Leaf(String::from("i32.const")),
        Cirru::Leaf(String::from("16")),
      ]),
    ])])?,
    String::from(SIMPLE_CODE)
  );

  assert_eq!(
    format_to_wat(parse(BIGGER_CODE_CIRRU)?)?,
    String::from(BIGGER_CODE)
  );

  Ok(())
}
