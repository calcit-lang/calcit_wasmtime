## Calcit Wasmtime Binding

> Call Wasmtime from Calcit.

### Usage

under `wasmtime.core`:

```cirru.no-check
; "generate lisp style code from quoted code"
format-to-wat
  quote $
    a b
    c d
    e f (g h)
      ;; i j $ k
      l m n

; "currently only demonstrated i64->i64"
run-wat "|(module (func (export \"main\") (param i64) (result i64) local.get 0 i64.const 14 i64.add))" |main 13
```

See [WAT execution boundary](docs/wat-execution.md) for the supported function
shape, synchronous execution, failure behavior, and untrusted-code limits. The
page is indexed by `calcit docs read/search`.

### Develop

Use the published Calcit **0.28.0** and Caps **0.1.1**. This module has a
native entry and no frontend assets or COS deployment. Its heterogeneous EDN
inputs remain an explicit FFI boundary; the two exported wrappers validate
String/Number responses before returning to typed code. Rust buffer ownership,
status mapping, and the Wasmtime execution model are unchanged.

本模块使用正式 Calcit 0.28.0 / Caps 0.1.1，只有 native 入口，无前端或 COS。
异构 EDN 输入保留为显式 FFI 边界，两个包装函数分别校验 String / Number 返回值；
不改 Rust buffer ownership、状态码或 Wasmtime 执行模型。

`calcit.cirru` is the canonical source snapshot. The legacy `compact.cirru`
copy has been retired; use Calcit's structured edit/query commands for source
changes.

### 共享 FFI 基础层 / Shared FFI foundation

本模块使用 [`calcit_native_ffi`](https://github.com/calcit-lang/calcit-native-ffi)
维护 C-safe buffer layout、allocator ownership、request decode 与 response
encode。Wasmtime engine/module 执行和现有 0/1/2 业务状态码仍由本仓库维护。

This module uses
[`calcit_native_ffi`](https://github.com/calcit-lang/calcit-native-ffi) for the
C-safe buffer layout, allocator ownership, request decoding, and response
encoding. Wasmtime engine/module execution and the existing 0/1/2 business
status mapping remain owned by this repository.

```bash
cargo build --locked
mkdir -p dylibs
# macOS; on Linux copy libcalcit_wasmtime.so instead.
cp target/debug/libcalcit_wasmtime.dylib dylibs/
calcit calcit.cirru --strict-types --warn-dyn-method --check-only
calcit calcit.cirru analyze check-public --ns wasmtime.core --ns wasmtime.util --ns wasmtime.demo
calcit calcit.cirru
```

Only run the repository's trusted, bounded demo. The usage block above requires
the native library and is intentionally not executed by Markdown checking;
ordinary CI runs the original Rust example and Calcit demo, as well as all
seven public definitions. No fuel or timeout limits are provided for untrusted WAT.

### License

MIT
