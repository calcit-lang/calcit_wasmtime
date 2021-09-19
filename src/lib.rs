use lazy_static::lazy_static;
use regex::Regex;
use wasmtime::*;

use cirru_parser::Cirru;

pub fn format_to_wast(xs: &[Cirru]) -> Result<String, String> {
  let mut content: String = String::from("\n");

  for expr in xs {
    content = format!("{}{}\n", content, format_expr(expr, 0)?);
  }

  Ok(content)
}

lazy_static! {
  static ref ENDS_WITH_NEWLINE: Regex = Regex::new("\\n\\s+$").unwrap();
}

pub fn format_expr(node: &Cirru, indent: usize) -> Result<String, String> {
  match node {
    Cirru::List(xs) => {
      if !xs.is_empty() && is_comment_mark(&xs[0]) {
        let mut chunk: String = format!("{}{}", gen_newline(indent), ";;");
        for (idx, x) in xs.iter().enumerate() {
          if idx > 0 {
            chunk = format!("{} {}", chunk, x);
          }
        }
        chunk = format!("{}{}", chunk.trim_end(), gen_newline(indent));
        Ok(chunk)
      } else {
        let mut chunk = String::from("(");
        for (idx, x) in xs.iter().enumerate() {
          if is_nested(x) {
            chunk = format!("{}{}", chunk.trim_end(), gen_newline(indent + 1));
          }
          let next = format_expr(x, indent + 1)?;
          if next.starts_with('\n') {
            chunk = format!("{}{}", chunk.trim_end(), next);
          } else {
            chunk = format!("{}{}", chunk, next);
          }
          // TODO dirty way, but intuitive for now
          if idx < xs.len() - 1 && !ENDS_WITH_NEWLINE.is_match(&chunk) {
            chunk = format!("{} ", chunk);
          }
        }
        Ok(format!("{})", chunk))
      }
    }
    Cirru::Leaf(token) => {
      if token.is_empty() {
        Err(String::from("empty string is invalid"))
      } else {
        let s0 = token.chars().next().unwrap();
        if s0 == '|' || s0 == '"' {
          Ok(format!("\"{}\"", token[1..].escape_default().to_string()))
        } else if token.contains(' ') || token.contains('\n') || token.contains('\"') {
          Err(format!("bad token content: {}", token))
        } else {
          Ok(token.to_owned())
        }
      }
    }
  }
}

pub fn gen_newline(n: usize) -> String {
  let mut chunk: String = String::from("\n");
  for _ in 0..n {
    chunk = format!("{}  ", chunk);
  }
  chunk
}

pub fn is_nested(node: &Cirru) -> bool {
  match node {
    Cirru::Leaf(_) => false,
    Cirru::List(xs) => {
      for x in xs {
        if let Cirru::List(ys) = x {
          if !ys.is_empty() {
            return true;
          }
        }
      }
      false
    }
  }
}

pub fn is_comment_mark(node: &Cirru) -> bool {
  match node {
    Cirru::List(_) => false,
    Cirru::Leaf(s) => s == ";" || s == ";;",
  }
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
