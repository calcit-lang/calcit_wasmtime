# Development guide / 开发指南

- `calcit.cirru` 是唯一 Calcit source snapshot；修改前先运行 `calcit docs agents --full`。
- C-safe buffer、allocator ownership 和 Cirru EDN transport 统一来自 `calcit_native_ffi`。
- Wasmtime 配置、WAT 转换和 0/1/2 status mapping 保留在本仓库。
- Issue 与 PR 标题和正文使用中英双语。
- 每个提交在 `editing-history/` 增加时间戳中英双语记录。

- `calcit.cirru` is the only Calcit source snapshot; run `calcit docs agents --full` before editing it.
- C-safe buffers, allocator ownership, and Cirru EDN transport come from `calcit_native_ffi`.
- Wasmtime configuration, WAT conversion, and the 0/1/2 status mapping remain local.
- Issue and PR titles and bodies are bilingual in Chinese and English.
- Add a timestamped bilingual note under `editing-history/` for every commit.

```bash
cargo fmt --check
cargo test
cargo clippy --all-targets -- -D warnings
calcit calcit.cirru --check-only
```
