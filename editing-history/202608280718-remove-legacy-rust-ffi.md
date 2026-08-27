# Remove legacy Rust FFI exports / 删除遗留 Rust FFI 导出

## 中文

- 删除 obsolete build-ID build script、`calcit_ffi_build_id`、`abi_version` 与 `edn_version`。
- `format_to_wat` 和 `run_wat` 保留为 `rlib` 的 Rust API，但移除 `no_mangle`；动态产物从 Rust `dylib` 改为 `cdylib`。
- 保留 `rlib` 供 Rust 消费者使用，Calcit 动态边界只保留 C-safe buffer v1，Calcit 要求升级到 0.13.57。
- 迁移旧 macro schema；CI 增加 Snapshot、符号表与真实 Wasmtime 调用验证。
- 忽略 CLI 生成的 `.calcit/` 本地状态目录。

## English

- Remove the obsolete build-ID build script, `calcit_ffi_build_id`, `abi_version`, and `edn_version`.
- Retain `format_to_wat` and `run_wat` as Rust APIs for the `rlib`, but remove `no_mangle`; switch the dynamic artifact from a Rust `dylib` to a `cdylib`.
- Keep `rlib` for Rust consumers while exposing only C-safe buffer v1 to Calcit dynamically, and upgrade the Calcit requirement to 0.13.57.
- Migrate the legacy macro schema and add Snapshot, symbol-table, and real Wasmtime call validation to CI.
- Ignore the CLI-generated local `.calcit/` state directory.
