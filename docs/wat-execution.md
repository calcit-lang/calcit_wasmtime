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

## Numeric boundary / 数值边界

The existing adapter casts the numeric argument to Rust `i64` and converts the
result back to `f64`/Calcit Number. It does not guarantee exact full-i64 transport:
identity with input `1.5` currently returns `1`, and a WAT constant
`9007199254740993` returns Number `9007199254740992`. A successful call is not
proof of exact numeric round-tripping. The policy is tracked in
[issue #24](https://github.com/calcit-lang/calcit_wasmtime/issues/24); the toolchain
migration does not silently change accepted inputs or error behavior.

现有实现将参数转换为 Rust `i64`，再把结果转换为 `f64`/Calcit Number；不能
假定完整 i64 精确传输。identity 输入 `1.5` 当前返回 `1`，WAT 常量
`9007199254740993` 返回 Number `9007199254740992`。已在 #24 跟踪数值合同，
本轮工具链迁移不悄悄改变输入或错误语义；需要精确数值的调用方不可把成功返回
当作精确往返证明。

## Safety and placement

The current API does not configure fuel, epoch interruption, memory limits, WASI, imports, timeout, or cancellation. Do not execute untrusted WAT from a WebSocket message or HTTP request: valid code can consume excessive CPU or memory and block the Calcit host thread.

Run trusted, bounded modules during explicit system work outside serial updater and render paths. If realtime applications need user-provided modules later, add resource limits and cancellable task execution before exposing that capability; return typed completion/failure messages through the bounded event path.
