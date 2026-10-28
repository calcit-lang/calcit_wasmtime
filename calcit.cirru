
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |wasmtime
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'wasmtime.demo/main!) (:mode :native) (:reload-fn 'wasmtime.demo/reload!) (:target :native)
      :feature-policy $ {}
      :modules $ []
      :type-slots $ {}
  :files $ {}
    'wasmtime.core $ %{} 'FileEntry
      :defs $ {}
        'format-to-wat $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-to-wat (tree)
            let
                value $ &call-dylib-edn (get-dylib-path |/dylibs/libcalcit_wasmtime) |format_to_wat tree
              if (string? value) value $ raise |Expected-string-from-format_to_wat
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> String)
        'run-wat $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-wat (code f-name v0)
            let
                value $ &call-dylib-edn (get-dylib-path |/dylibs/libcalcit_wasmtime) |run_wat code f-name v0
              if (number? value) value $ raise |Expected-number-from-run_wat
          :examples $ []
          :schema $ quote $ Fn Dynamic String Number (-> Number)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns wasmtime.core
          :require $ wasmtime.util :refer $ get-dylib-path
    'wasmtime.demo $ %{} 'FileEntry
      :defs $ {}
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            let
                code
                  cirru-quote $
                    module
                      type $A $ struct (field i32) (field i64)
                      func (export |main) (param i64) (result i64) (local.get 0) (i64.const 14) (i64.add) (return)
                      func (export |demo) (param i64) (result i64)
                        local $t $ ref $A
                        local.set $t $ struct.new $A (i32.const 10) (i64.const 11)
                        struct.get $A 1 $ local.get $t
                  ; :: 'quote $ quote $
                    |module $ |func (|export "|\"main") (|param |i64) (|result |i64) (|local.get |0) (|i64.const |14) (|i64.add) (|return)
              println code
              println $ run-wat code |main 13
              , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|TODO Reload") &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns wasmtime.demo
          :require $ wasmtime.core :refer $ run-wat format-to-wat
    'wasmtime.util $ %{} 'FileEntry
      :defs $ {}
        'get-dylib-ext $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro get-dylib-ext ()
            match (&get-os) (:macos |.dylib) (:windows |.dll) (_ |.so)
          :examples $ []
          :schema $ quote $ Macro
            -> $ Expr String
            :capabilities :platform-read
        'get-dylib-path $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-dylib-path (p)
            str (or-current-path calcit-dirname) p $ get-dylib-ext
          :examples $ []
          :schema $ quote $ Fn String (-> String)
        'or-current-path $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn or-current-path (p)
            if (blank? p) |. p
          :examples $ []
          :schema $ quote $ Fn String (-> String)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns wasmtime.util
          :require $ wasmtime.$meta :refer $ calcit-dirname calcit-filename
