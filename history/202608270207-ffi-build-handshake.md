# Add a C-safe FFI build handshake

- Export the compiler, target, debug-assertion mode, and panic strategy through
  a static C string before any Rust-layout-dependent FFI symbol is called.
- Keep the existing ABI and Cirru EDN version exports for the transitional
  Rust-native value protocol.
