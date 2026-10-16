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

使用者影响：候选模块 `0.1.10` 将工具链同步到正式 Calcit `0.30.0` / Caps `0.1.1`。
`format-to-wat` / `run-wat` 的输入、返回值与错误行为不变，demo 的两个副作用入口
实际返回 Unit，与原声明一致。Rust buffer ownership、0/1/2 状态码和 Wasmtime
执行模型不变；不升级 Rust 运行时依赖，不增加不可信 WAT 的资源限制。
候选需通过原 Rust/FFI/demo 门禁及远端 CI、审阅后才能发版。

Candidate module `0.1.10` targets published Calcit **0.30.0** and Caps **0.1.1**.
The public wrappers retain their input, checked String/Number results, and errors;
both demo effects now actually return their declared Unit. Rust buffer ownership,
status mapping, runtime dependencies, and synchronous Wasmtime execution remain
unchanged. Original Rust/FFI/demo gates and remote CI/review must pass before release.

本次从 `0.1.9` 升级仅把平台后缀宏的弃用 `case-default` 改为 `match`，
保留 macOS `.dylib`、Windows `.dll`、其他平台 `.so` 的映射；不修改 Rust 源码、
crate 版本或 Cargo.lock。另更新 Git 模块工具链、说明和完整 strict 门禁；测试与 release workflow
均从同一 `deps.cirru` 选择 CLI。不增加 checker、改写规则、测试框架、类型预算
或 alpha 依赖。Rust crate 仍禁止发布；正式 Git tag 发布前不要引用候选版本。

This update from `0.1.9` replaces the platform suffix macro's deprecated
`case-default` with `match`, preserving the `.dylib`/`.dll`/`.so` mapping.
Rust sources, crate version and Cargo.lock are unchanged. Both workflows select the CLI from `deps.cirru` and run
complete strict verification. No checker, rewrite rule, test framework, type
budget or alpha dependency is added. Rust crate publishing stays disabled;
do not depend on the candidate before its Git module tag is released.

本模块只有 native 入口，无前端或 COS。异构 EDN 输入保留为显式 FFI 边界，
两个包装函数分别校验 String / Number 返回值，不宣称全部类型边界已封闭。

This module is native-only, with no frontend assets or COS deployment. Its heterogeneous
EDN inputs remain explicit FFI boundaries, not a claim of fully closed types.

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
calcit calcit.cirru fix --workflow strict --verify --format edn
calcit calcit.cirru --check-only --ns wasmtime.core --ns wasmtime.util --ns wasmtime.demo
calcit calcit.cirru
```

Only run the repository's trusted, bounded demo. The usage block above requires
the native library and is intentionally not executed by Markdown checking;
ordinary CI runs the original Rust example and Calcit demo, as well as all
seven public definitions. No fuel or timeout limits are provided for untrusted WAT.

### License

MIT
