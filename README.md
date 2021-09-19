## Caclit Wasmtime Binding

> Call Wasmtime from Calcit.

### Usage

under `calcit.wasmtime`:

```cirru
format-to-wat
  quote $
    a b
    c d
    e f (g h)
      ;; i j $ k
      l m n

; "currently only supports i64->i64"
run-wat "\"(module\n  (func (export \"main\") (param i64) (result i64)\n    get_local 0\n    i64.const 14\n    i64.add\n    return)\n)" 13
```

### Develop

Try example:

```bash
cargo run --example try_api
```

### License

MIT
