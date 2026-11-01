## Calcit Wasmtime Binding

> Call Wasmtime from Calcit.

### Usage

under `wasmtime.core`:

```cirru.no-check
; "generate lisp style code from quoted code"

format-to-wat $ quote $
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

使用者影响：候选 Git 模块 **0.2.0** 配对正式 Calcit **0.34.0** / Caps **0.1.1**。
`run-wat` 首参数使用 `wasmtime.core/WatSource`，即 `String | CirruQuote` 的透明 union；
原有文本和引用表达式直接传入，运行值与 C-safe ABI 不变。无其他输入种类被 Rust 接受；
原来落到 native 的错误种类现在会更早被类型检查拒绝，Dynamic 调用方须先完成边界收窄，
所以采用非 patch 版本。CirruQuote 的 list 根、WAT 有效性和 export 形状仍由原 native 检查。

`format-to-wat` 继续接受原有递归 EDN List/标量/Quote，保留真实 Dynamic 边界；
不使用伪泛型或递归 union 隐藏它。输入合同设计由
[#27](https://github.com/calcit-lang/calcit_wasmtime/issues/27) 跟踪，数值转换边界仍由
[#24](https://github.com/calcit-lang/calcit_wasmtime/issues/24) 跟踪。
Rust、Cargo.lock、crate 0.1.9、同步执行与 0/1/2 状态码不变。候选需完成原 Linux CI
和精确提交评审后发布；现有 tag 不移动。

Candidate Git module **0.2.0** pairs official Calcit **0.34.0** and Caps **0.1.1**.
`run-wat` accepts the transparent `WatSource = String | CirruQuote` union. Both existing
forms pass through without wrappers or ABI changes. Previously invalid input kinds fail
static checking earlier, so this is a non-patch API tightening; narrow Dynamic callers first.
Quote roots, WAT validity, exports and numeric conversion remain native checks.
The recursive EDN formatter stays intentionally open. Rust implementation, lock, crate,
synchronous execution and status mapping are unchanged. The candidate still requires
original Linux CI and exact-head review before publication; existing tags stay unchanged.

### 共享 FFI 基础层 / Shared FFI foundation

本模块使用 [`calcit_native_ffi`](https://github.com/calcit-lang/calcit-native-ffi)
维护 C-safe buffer layout、allocator ownership、request decode 与 response
encode。Wasmtime engine/module 执行和现有 0/1/2 业务状态码仍由本仓库维护。

This module uses
[`calcit_native_ffi`](https://github.com/calcit-lang/calcit-native-ffi) for the
C-safe buffer layout, allocator ownership, request decoding, and response
encoding. Wasmtime engine/module execution and the existing 0/1/2 business
status mapping remain owned by this repository.

运行以下检查前，请先安装或选择正式 Calcit **0.34.0** CLI，并用 `calcit --version` 确认当前版本。

Before running these checks, install or select the official Calcit **0.34.0** CLI
and confirm the selected version with `calcit --version`.

```bash
cargo build --locked
mkdir -p dylibs
# macOS; on Linux copy libcalcit_wasmtime.so instead.
cp target/debug/libcalcit_wasmtime.dylib dylibs/
calcit calcit.cirru fix --workflow strict --verify --format json | jq -e '.data.workflow.status == "passed" and .diagnostics == []'
calcit calcit.cirru --check-only --all-defs
calcit calcit.cirru --check-only --ns wasmtime.core --ns wasmtime.util --ns wasmtime.demo
calcit calcit.cirru
calcit calcit.cirru test --tag native --require-match
```

Only run the repository's trusted, bounded demo. The usage block above requires
the native library and is intentionally not executed by Markdown checking;
ordinary CI runs the original Rust example and Calcit demo, as well as all
seven public definitions. No fuel or timeout limits are provided for untrusted WAT.

CI Action 使用精确正式 tag，保留原权限和全部门禁，并按既定维护策略接受 tag 可移动风险。
Rust crate 禁止发布；没有 npm 包或前端部署。

CI Actions use exact formal tags, retaining permissions and every gate while accepting mutable-tag risk under the established policy. The Rust crate stays non-publishable; there is no npm package or frontend deployment.

### License

MIT
