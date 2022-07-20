
{} (:package |wasmtime)
  :configs $ {} (:init-fn |wasmtime.demo/main!) (:reload-fn |wasmtime.demo/reload!) (:version |0.0.1)
    :modules $ []
  :entries $ {}
  :files $ {}
    |wasmtime.core $ {}
      :defs $ {}
        |format-to-wat $ quote
          defn format-to-wat (tree)
            &call-dylib-edn (get-dylib-path "\"/dylibs/libcalcit_wasmtime") "\"format_to_wat" tree
        |run-wat $ quote
          defn run-wat (code v0)
            &call-dylib-edn (get-dylib-path "\"/dylibs/libcalcit_wasmtime") "\"run_wat" code v0
      :ns $ quote
        ns wasmtime.core $ :require
          wasmtime.util :refer $ get-dylib-path
    |wasmtime.demo $ {}
      :defs $ {}
        |main! $ quote
          defn main! () $ let
              code
                cirru-quote $ 
                  module $ func (export "\"main") (param i64) (result i64) (get_local 0) (i64.const 14) (i64.add) (return)
                ; :: 'quote $ quote
                    "\"module" $ "\"func" ("\"export" "\"\"main") ("\"param" "\"i64") ("\"result" "\"i64") ("\"get_local" "\"0") ("\"i64.const" "\"14") ("\"i64.add") ("\"return")
            println code
            println $ run-wat code 13
        |reload! $ quote
          defn reload! () $ println "\"TODO Reload"
      :ns $ quote
        ns wasmtime.demo $ :require
          wasmtime.core :refer $ run-wat format-to-wat
    |wasmtime.util $ {}
      :defs $ {}
        |get-dylib-ext $ quote
          defmacro get-dylib-ext () $ case-default (&get-os) "\".so" (:macos "\".dylib") (:windows "\".dll")
        |get-dylib-path $ quote
          defn get-dylib-path (p)
            str (or-current-path calcit-dirname) p $ get-dylib-ext
        |or-current-path $ quote
          defn or-current-path (p)
            if (blank? p) "\"." p
      :ns $ quote
        ns wasmtime.util $ :require
          wasmtime.$meta :refer $ calcit-dirname calcit-filename
