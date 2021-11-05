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
run-wat "\"(module\n  (func (export \"main\") (param i64) (result i64)\n    get_local 0\n    i64.const 14\n    i64.add\n    return)\n)" 13
```

### Develop

If you have have [calcit_runner](https://github.com/calcit-lang/calcit_runner.rs) installed:

```bash
./build.sh
cr -1
```

### License

MIT
