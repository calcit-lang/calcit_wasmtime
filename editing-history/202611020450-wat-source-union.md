# WAT 输入闭合 union / Closed WAT input union

候选模块 0.2.0 配对正式 Calcit 0.34.0。Rust 已只接受 String 或 list-root Quote，
因此 run-wat 用 WatSource = String | CirruQuote 收窄原 Dynamic 参数，保留两种原输入，
不增加运行时包装。非法种类提前静态失败，按非 patch 合同迁移；递归 EDN formatter
继续开放，数值、ABI、Rust 和 lock 不变。新增一项原生附带测试回放两种真实 WAT 调用，
保留原 Rust/CLI/ABI/示例门禁。发版仍须精确提交 CI 与评审通过。

Candidate 0.2.0 pairs official Calcit 0.34.0. Rust already accepts only String
or a list-root Quote, so WatSource closes run-wat's former Dynamic argument
without removing either form or adding wrappers. Earlier rejection of invalid
kinds is a non-patch contract change. Recursive EDN formatting remains open;
numeric behavior, ABI, Rust and lock remain unchanged. One attached native test
replays both real WAT calls, retaining every original gate. Release requires
exact-head CI and review.
