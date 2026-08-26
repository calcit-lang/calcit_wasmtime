# Add C-safe synchronous FFI buffer exports

- Added the versioned Calcit FFI buffer capability and module-owned free function.
- Added v1 adapters for `format_to_wat` and `run_wat` while retaining the old Rust ABI exports during migration.
- Parse requests and format responses as UTF-8 Cirru EDN, with explicit status codes and panic containment.
