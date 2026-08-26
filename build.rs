use std::{env, process::Command};

fn rustc_verbose_field<'a>(output: &'a str, name: &str) -> &'a str {
  output
    .lines()
    .find_map(|line| line.strip_prefix(name).map(str::trim))
    .unwrap_or_else(|| panic!("`rustc --version --verbose` did not report `{name}`"))
}

fn main() {
  let rustc = env::var("RUSTC").unwrap_or_else(|_| "rustc".to_owned());
  let output = Command::new(&rustc)
    .args(["--version", "--verbose"])
    .output()
    .unwrap_or_else(|error| panic!("failed to run `{rustc} --version --verbose`: {error}"));
  assert!(output.status.success(), "`{rustc} --version --verbose` failed");
  let verbose = String::from_utf8(output.stdout).expect("rustc verbose version must be UTF-8");
  let release = rustc_verbose_field(&verbose, "release:");
  let commit = rustc_verbose_field(&verbose, "commit-hash:");
  let target = env::var("TARGET").expect("Cargo must provide TARGET to build scripts");
  let debug_assertions = env::var_os("CARGO_CFG_DEBUG_ASSERTIONS").is_some();
  let panic_strategy = env::var("CARGO_CFG_PANIC").expect("Cargo must provide CARGO_CFG_PANIC to build scripts");

  println!(
    "cargo:rustc-env=CALCIT_FFI_BUILD_ID=rustc={release}:{commit};target={target};debug-assertions={debug_assertions};panic={panic_strategy}"
  );
}
