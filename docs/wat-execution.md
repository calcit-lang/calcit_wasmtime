---
title: "WAT execution boundary"
summary: "Format quoted Calcit data as WAT and synchronously execute a constrained i64-to-i64 Wasmtime export"
scope: "module"
kind: "guide"
category: "wasm"
aliases:
  - "calcit wasmtime"
  - "run WAT"
  - "WebAssembly runtime"
  - "format-to-wat"
  - "run-wat"
  - "i64 wasm function"
  - "执行 WebAssembly"
entry_for:
  - "wasmtime.core/format-to-wat"
  - "wasmtime.core/run-wat"
---

# WAT execution boundary

`format-to-wat` converts supported quoted Calcit/Cirru data into lisp-style WAT text. `run-wat` accepts WAT text or a quoted expression, an exported function name, and one numeric argument. The selected export must have the shape `i64 -> i64`; its result is returned as Calcit `Number`.

```cirru.no-check
wasmtime.core/run-wat
  "|(module (func (export \"main\") (param i64) (result i64) local.get 0 i64.const 1 i64.add))"
  |main
  41
```

Compilation, instantiation, and execution are synchronous. Invalid WAT, missing exports, type mismatches, traps, and argument-shape errors raise through the native boundary. The current adapter creates a fresh engine, module, store, and instance per call; it is a small execution bridge rather than a cached service runtime.

## Safety and placement

The current API does not configure fuel, epoch interruption, memory limits, WASI, imports, timeout, or cancellation. Do not execute untrusted WAT from a WebSocket message or HTTP request: valid code can consume excessive CPU or memory and block the Calcit host thread.

Run trusted, bounded modules during explicit system work outside serial updater and render paths. If realtime applications need user-provided modules later, add resource limits and cancellable task execution before exposing that capability; return typed completion/failure messages through the bounded event path.
