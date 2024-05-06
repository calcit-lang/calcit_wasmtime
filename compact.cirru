
{} (:package |wasmtime)
  :configs $ {} (:init-fn |wasmtime.demo/main!) (:reload-fn |wasmtime.demo/reload!) (:version |0.0.1)
    :modules $ []
  :entries $ {}
  :files $ {}
    |wasmtime.core $ %{} :FileEntry
      :defs $ {}
        |format-to-wat $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn format-to-wat (tree)
              &call-dylib-edn (get-dylib-path "\"/dylibs/libcalcit_wasmtime") "\"format_to_wat" tree
        |run-wat $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn run-wat (code v0)
              &call-dylib-edn (get-dylib-path "\"/dylibs/libcalcit_wasmtime") "\"run_wat" code v0
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns wasmtime.core $ :require
            wasmtime.util :refer $ get-dylib-path
    |wasmtime.demo $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! () $ let
                code
                  cirru-quote $ 
                    module $ func (export "\"main") (param i64) (result i64) (local.get 0) (i64.const 14) (i64.add) (return)
                  ; :: 'quote $ quote
                      "\"module" $ "\"func" ("\"export" "\"\"main") ("\"param" "\"i64") ("\"result" "\"i64") ("\"local.get" "\"0") ("\"i64.const" "\"14") ("\"i64.add") ("\"return")
              println code
              println $ run-wat code 13
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ println "\"TODO Reload"
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns wasmtime.demo $ :require
            wasmtime.core :refer $ run-wat format-to-wat
    |wasmtime.util $ %{} :FileEntry
      :defs $ {}
        |get-dylib-ext $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro get-dylib-ext () $ case-default (&get-os) "\".so" (:macos "\".dylib") (:windows "\".dll")
        |get-dylib-path $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-dylib-path (p)
              str (or-current-path calcit-dirname) p $ get-dylib-ext
        |or-current-path $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn or-current-path (p)
              if (blank? p) "\"." p
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns wasmtime.util $ :require
            wasmtime.$meta :refer $ calcit-dirname calcit-filename
