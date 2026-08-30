## Calcit Wasmtime Binding

> Call Wasmtime from Calcit.

### Usage

under `wasmtime.core`:

```cirru
; "generate lisp style code from quoted code"
format-to-wat
  quote $
    a b
    c d
    e f (g h)
      ;; i j $ k
      l m n

; "currently only demonstrated i64->i64"
run-wat "\"(module\n  (func (export \"main\") (param i64) (result i64)\n    get_local 0\n    i64.const 14\n    i64.add\n    return)\n)" |main 13
```

See [WAT execution boundary](docs/wat-execution.md) for the supported function
shape, synchronous execution, failure behavior, and untrusted-code limits. The
page is indexed by `calcit docs read/search`.

### Develop

If you have have [calcit_runner](https://github.com/calcit-lang/calcit_runner.rs) installed:

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
./build.sh
calcit calcit.cirru
```

### License

MIT
