# Harden checkout credentials

- Pinned `actions/checkout` v5 to its immutable full commit SHA.
- Disabled persisted checkout credentials before repository-controlled build and validation commands run.
- Kept the workflow permissions and all Calcit 0.13.77 FFI/runtime gates unchanged.

# 加固检出凭据

- 将 `actions/checkout` v5 固定到不可变的完整提交 SHA。
- 在仓库控制的构建与验证命令运行前禁用持久化检出凭据。
- 保持工作流权限及全部 Calcit 0.13.77 FFI/runtime 门禁不变。
