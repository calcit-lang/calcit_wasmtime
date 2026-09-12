# Stop crates.io publishing / 停止发布到 crates.io

## 中文

- `calcit_wasmtime` 只是 Calcit 模块（由 caps 以 git tag 消费），不应发布到 crates.io。
- 在 `Cargo.toml` 加 `publish = false`，并把 release 触发的 workflow 改为校验（Calcit 快照 + cargo test/build），不再调用 `cargo publish`。
- 发布即打 git tag。

## English

- `calcit_wasmtime` is only a Calcit module (consumed by caps via git tags), so it must not be published to crates.io.
- Set `publish = false` in `Cargo.toml`, and turn the release-triggered workflow into validation (Calcit snapshot + cargo test/build) with no `cargo publish`.
- Releasing now means pushing a git tag.
