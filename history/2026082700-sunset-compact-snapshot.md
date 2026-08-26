# Retire the duplicate compact snapshot

- Confirmed both snapshots load the same default entry and four namespaces.
- Kept `calcit.cirru`, which is the active README entry and the snapshot updated
  by recent main commits.
- Removed the stale `compact.cirru` copy and stopped marking `calcit.cirru` as
  generated so source changes remain visible in reviews.
- Kept the migration independent from dependency and runtime behavior changes.
