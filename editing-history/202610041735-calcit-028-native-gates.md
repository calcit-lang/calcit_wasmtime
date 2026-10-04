# 正式 Calcit 0.28 native 迁移 / Published Calcit 0.28 native migration

- 将 deps 与 CI 固定到正式 Calcit 0.28.0 / Caps 0.1.1，保留模块版本 0.1.8。
- 通过官方 CLI 的 dry-run/revision 原子事务声明 native target；两处 FFI 返回值
  各求值一次，以 core String/Number predicate 检查后进入 typed code。
- EDN 输入、Rust/Wasmtime/ABI/错误状态保持不变；不增加 JS 依赖、COS、编译器改写、
  proof、验证脚本或新的测试框架。复用现有 Rust 测试/例子/native demo，检查全部七个公开定义。
- Published Calcit 0.28.0 and Caps 0.1.1 are pinned without changing module version 0.1.8.
- An official dry-run/revision-guarded CLI transaction declares the native target and
  validates each FFI response once with core predicates before returning typed values.
- EDN inputs, Rust/Wasmtime behavior, ABI and error statuses stay unchanged. Existing
  tests, examples and the native demo remain the checks; no JS dependency, COS setup,
  compiler rewrite/proof, verification script or testing framework is introduced.
