
{} (:package |calcit.wasmtime)
  :configs $ {} (:init-fn |calcit.wasmtime.demo/main!) (:reload-fn |calcit.wasmtime.demo/reload!)
    :modules $ []
    :version |0.0.1
  :files $ {}
    |calcit.wasmtime.demo $ {}
      :ns $ quote
        ns calcit.wasmtime.demo $ :require
          calcit.wasmtime :refer $ run-wat format-to-wat
      :defs $ {}
        |main! $ quote
          defn main! () (println "\"demo")
            println $ format-to-wat
              quote $ 
                a b
                c d
                e f (g h)
                  ;; i j $ k
                  l m n
            println $ run-wat "\"(module\n  (func (export \"main\") (param i64) (result i64)\n    get_local 0\n    i64.const 14\n    i64.add\n    return)\n)" 13
        |reload! $ quote
          defn reload! () $ println "\"TODO Reload"
    |calcit.wasmtime $ {}
      :ns $ quote
        ns calcit.wasmtime $ :require
          calcit.wasmtime.$meta :refer $ calcit-dirname
      :defs $ {}
        |run-wat $ quote
          defn run-wat (code v0)
            &call-dylib:str-i64->i64
              str (or-current-path calcit-dirname) "\"/dylibs/libcalcit_wasmtime" $ get-dylib-ext
              , "\"run_wat" code v0
        |get-dylib-ext $ quote
          defmacro get-dylib-ext () $ case-default (&get-os) "\".so" (:macos "\".dylib") (:windows "\".dll")
        |format-to-wat $ quote
          defn format-to-wat (tree)
            &call-dylib:cirru->str
              str (or-current-path calcit-dirname) "\"/dylibs/libcalcit_wasmtime" $ get-dylib-ext
              , "\"format_to_wat" tree
        |or-current-path $ quote
          defn or-current-path (p)
            if (blank? p) "\"." p
