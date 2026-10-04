# 固定已发布 Action / Pin the published Action

处理 PR #21 review：两份 workflow 固定到正式 v1.5.0 tag 的实际 commit
ca701be5a471759e442aa053cd100720bbe1f09f，保留版本注释。没有修改模块 tag、
源码或门禁；Action 安全 pin 与模块 hash 依赖不同。

Address PR #21 review by pinning both workflows to the actual commit behind
published v1.5.0, retaining its version comment. Module tags, source and gates
are unchanged; an Action security pin is not a hash-based module dependency.
