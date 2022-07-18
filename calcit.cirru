
{}
  :configs $ {} (:init-fn |wasmtime.demo/main!) (:port 6001) (:reload-fn |wasmtime.demo/reload!) (:version |0.0.1)
    :modules $ []
  :entries $ {}
  :ir $ {} (:package |wasmtime)
    :files $ {}
      |wasmtime.core $ {}
        :configs $ {}
        :defs $ {}
          |format-to-wat $ {} (:at 1632069976694) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1632069976694) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1632069976694) (:by |u0) (:text |format-to-wat) (:type :leaf)
              |r $ {} (:at 1632069976694) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1632070284402) (:by |u0) (:text |tree) (:type :leaf)
              |v $ {} (:at 1632070007007) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1635931916985) (:by |u0) (:text |&call-dylib-edn) (:type :leaf)
                  |j $ {} (:at 1632070080784) (:by |u0) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1635931977959) (:by |u0) (:text |get-dylib-path) (:type :leaf)
                      |r $ {} (:at 1632074746169) (:by |u0) (:text "|\"/dylibs/libcalcit_wasmtime") (:type :leaf)
                  |o $ {} (:at 1632070307693) (:by |u0) (:text "|\"format_to_wat") (:type :leaf)
                  |t $ {} (:at 1632070337027) (:by |u0) (:text |tree) (:type :leaf)
          |run-wat $ {} (:at 1632069994552) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1632069994552) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1632069994552) (:by |u0) (:text |run-wat) (:type :leaf)
              |r $ {} (:at 1632070274884) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1632070274884) (:by |u0) (:text |code) (:type :leaf)
                  |j $ {} (:at 1632070274884) (:by |u0) (:text |v0) (:type :leaf)
              |v $ {} (:at 1632070274884) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1635931887019) (:by |u0) (:text |&call-dylib-edn) (:type :leaf)
                  |j $ {} (:at 1632070274884) (:by |u0) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1635931982163) (:by |u0) (:text |get-dylib-path) (:type :leaf)
                      |r $ {} (:at 1632075624544) (:by |u0) (:text "|\"/dylibs/libcalcit_wasmtime") (:type :leaf)
                  |n $ {} (:at 1632070297201) (:by |u0) (:text "|\"run_wat") (:type :leaf)
                  |r $ {} (:at 1632070274884) (:by |u0) (:text |code) (:type :leaf)
                  |v $ {} (:at 1632070274884) (:by |u0) (:text |v0) (:type :leaf)
        :ns $ {} (:at 1632069968920) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1632069968920) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1632069968920) (:by |u0) (:text |wasmtime.core) (:type :leaf)
            |r $ {} (:at 1632070383388) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1632070384223) (:by |u0) (:text |:require) (:type :leaf)
                |r $ {} (:at 1635931855730) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1635931859408) (:by |u0) (:text |wasmtime.util) (:type :leaf)
                    |j $ {} (:at 1635931861251) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1635931862086) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1635931870118) (:by |u0) (:text |get-dylib-path) (:type :leaf)
        :proc $ {} (:at 1632069968920) (:by |u0) (:type :expr)
          :data $ {}
      |wasmtime.demo $ {}
        :configs $ {}
        :defs $ {}
          |main! $ {} (:at 1632074286145) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1632074286145) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1632074286145) (:by |u0) (:text |main!) (:type :leaf)
              |r $ {} (:at 1632074286145) (:by |u0) (:type :expr)
                :data $ {}
              |y $ {} (:at 1632075913093) (:by |u0) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1632075917193) (:by |u0) (:text |let) (:type :leaf)
                  |L $ {} (:at 1632075919281) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1632075920051) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1632075919837) (:by |u0) (:text |code) (:type :leaf)
                          |j $ {} (:at 1632075942746) (:by |u0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1658163923544) (:by |u0) (:text |cirru-quote) (:type :leaf)
                              |j $ {} (:at 1658163948925) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1632076150453) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1635932612383) (:by |u0) (:text |module) (:type :leaf)
                                      |j $ {} (:at 1632075947750) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1632075949263) (:by |u0) (:text |func) (:type :leaf)
                                          |j $ {} (:at 1632075950206) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1632075951025) (:by |u0) (:text |export) (:type :leaf)
                                              |j $ {} (:at 1632075952038) (:by |u0) (:text "|\"main") (:type :leaf)
                                          |r $ {} (:at 1632075954219) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1632075955123) (:by |u0) (:text |param) (:type :leaf)
                                              |j $ {} (:at 1632075957356) (:by |u0) (:text |i64) (:type :leaf)
                                          |v $ {} (:at 1632075959248) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1632075960105) (:by |u0) (:text |result) (:type :leaf)
                                              |j $ {} (:at 1632075962207) (:by |u0) (:text |i64) (:type :leaf)
                                          |x $ {} (:at 1632075966316) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1632075968918) (:by |u0) (:text |get_local) (:type :leaf)
                                              |j $ {} (:at 1632075969250) (:by |u0) (:text |0) (:type :leaf)
                                          |y $ {} (:at 1632075970004) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1632075976907) (:by |u0) (:text |i64.const) (:type :leaf)
                                              |j $ {} (:at 1632075977845) (:by |u0) (:text |14) (:type :leaf)
                                          |yT $ {} (:at 1632075979874) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1632075983407) (:by |u0) (:text |i64.add) (:type :leaf)
                                          |yj $ {} (:at 1632075984099) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1632075985542) (:by |u0) (:text |return) (:type :leaf)
                          |n $ {} (:at 1635935008319) (:by |u0) (:type :expr)
                            :data $ {}
                              |5 $ {} (:at 1658163977385) (:by |u0) (:text |;) (:type :leaf)
                              |D $ {} (:at 1635935011569) (:by |u0) (:text |::) (:type :leaf)
                              |L $ {} (:at 1635935013460) (:by |u0) (:text |'quote) (:type :leaf)
                              |T $ {} (:at 1632075942746) (:by |u0) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1632075944102) (:by |u0) (:text |quote) (:type :leaf)
                                  |j $ {} (:at 1632076150453) (:by |u0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1632076018122) (:by |u0) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1635932718767) (:by |u0) (:text "|\"module") (:type :leaf)
                                          |j $ {} (:at 1632075947750) (:by |u0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1635932720255) (:by |u0) (:text "|\"func") (:type :leaf)
                                              |j $ {} (:at 1632075950206) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1635932722655) (:by |u0) (:text "|\"export") (:type :leaf)
                                                  |j $ {} (:at 1635932724671) (:by |u0) (:text "|\"\"main") (:type :leaf)
                                              |r $ {} (:at 1632075954219) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1635932726461) (:by |u0) (:text "|\"param") (:type :leaf)
                                                  |j $ {} (:at 1635932728666) (:by |u0) (:text "|\"i64") (:type :leaf)
                                              |v $ {} (:at 1632075959248) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1635932730274) (:by |u0) (:text "|\"result") (:type :leaf)
                                                  |j $ {} (:at 1635932731904) (:by |u0) (:text "|\"i64") (:type :leaf)
                                              |x $ {} (:at 1632075966316) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1635932733539) (:by |u0) (:text "|\"get_local") (:type :leaf)
                                                  |j $ {} (:at 1635932734765) (:by |u0) (:text "|\"0") (:type :leaf)
                                              |y $ {} (:at 1632075970004) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1635932736856) (:by |u0) (:text "|\"i64.const") (:type :leaf)
                                                  |j $ {} (:at 1635932738582) (:by |u0) (:text "|\"14") (:type :leaf)
                                              |yT $ {} (:at 1632075979874) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1635932740707) (:by |u0) (:text "|\"i64.add") (:type :leaf)
                                              |yj $ {} (:at 1632075984099) (:by |u0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1635932742456) (:by |u0) (:text "|\"return") (:type :leaf)
                  |P $ {} (:at 1632075989206) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1632075990822) (:by |u0) (:text |println) (:type :leaf)
                      |r $ {} (:at 1632075992459) (:by |u0) (:text |code) (:type :leaf)
                  |T $ {} (:at 1632075552288) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1632075553129) (:by |u0) (:text |println) (:type :leaf)
                      |j $ {} (:at 1632075555222) (:by |u0) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1632075554947) (:by |u0) (:text |run-wat) (:type :leaf)
                          |j $ {} (:at 1632076062169) (:by |u0) (:text |code) (:type :leaf)
                          |r $ {} (:at 1632075573143) (:by |u0) (:text |13) (:type :leaf)
          |reload! $ {} (:at 1632074478285) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1632074478285) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1632074478285) (:by |u0) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1632074478285) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1632074480348) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1632074481219) (:by |u0) (:text |println) (:type :leaf)
                  |j $ {} (:at 1632074484427) (:by |u0) (:text "|\"TODO Reload") (:type :leaf)
        :ns $ {} (:at 1632074257444) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1632074257444) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1632074257444) (:by |u0) (:text |wasmtime.demo) (:type :leaf)
            |v $ {} (:at 1632074366882) (:by |u0) (:type :expr)
              :data $ {}
                |D $ {} (:at 1632074368670) (:by |u0) (:text |:require) (:type :leaf)
                |T $ {} (:at 1632074296193) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1635931837991) (:by |u0) (:text |wasmtime.core) (:type :leaf)
                    |j $ {} (:at 1632074302652) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1632074303686) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1632074313317) (:by |u0) (:text |run-wat) (:type :leaf)
                        |j $ {} (:at 1632074317943) (:by |u0) (:text |format-to-wat) (:type :leaf)
        :proc $ {} (:at 1632074257444) (:by |u0) (:type :expr)
          :data $ {}
      |wasmtime.util $ {}
        :defs $ {}
          |get-dylib-ext $ {} (:at 1635931787251) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1635931787251) (:by |u0) (:text |defmacro) (:type :leaf)
              |j $ {} (:at 1635931787251) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
              |r $ {} (:at 1635931787251) (:by |u0) (:type :expr)
                :data $ {}
              |v $ {} (:at 1635931787251) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1635931787251) (:by |u0) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1635931787251) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1635931787251) (:by |u0) (:text |&get-os) (:type :leaf)
                  |r $ {} (:at 1635931787251) (:by |u0) (:text "|\".so") (:type :leaf)
                  |v $ {} (:at 1635931787251) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1635931787251) (:by |u0) (:text |:macos) (:type :leaf)
                      |j $ {} (:at 1635931787251) (:by |u0) (:text "|\".dylib") (:type :leaf)
                  |x $ {} (:at 1635931787251) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1635931787251) (:by |u0) (:text |:windows) (:type :leaf)
                      |j $ {} (:at 1635931787251) (:by |u0) (:text "|\".dll") (:type :leaf)
          |get-dylib-path $ {} (:at 1635931787251) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1635931787251) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1635931787251) (:by |u0) (:text |get-dylib-path) (:type :leaf)
              |r $ {} (:at 1635931787251) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1635931787251) (:by |u0) (:text |p) (:type :leaf)
              |v $ {} (:at 1635931787251) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1635931787251) (:by |u0) (:text |str) (:type :leaf)
                  |j $ {} (:at 1635931787251) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1635931787251) (:by |u0) (:text |or-current-path) (:type :leaf)
                      |j $ {} (:at 1635931787251) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                  |r $ {} (:at 1635931787251) (:by |u0) (:text |p) (:type :leaf)
                  |v $ {} (:at 1635931787251) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1635931787251) (:by |u0) (:text |get-dylib-ext) (:type :leaf)
          |or-current-path $ {} (:at 1635931787251) (:by |u0) (:type :expr)
            :data $ {}
              |T $ {} (:at 1635931787251) (:by |u0) (:text |defn) (:type :leaf)
              |j $ {} (:at 1635931787251) (:by |u0) (:text |or-current-path) (:type :leaf)
              |r $ {} (:at 1635931787251) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1635931787251) (:by |u0) (:text |p) (:type :leaf)
              |v $ {} (:at 1635931787251) (:by |u0) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1635931787251) (:by |u0) (:text |if) (:type :leaf)
                  |j $ {} (:at 1635931787251) (:by |u0) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1635931787251) (:by |u0) (:text |blank?) (:type :leaf)
                      |j $ {} (:at 1635931787251) (:by |u0) (:text |p) (:type :leaf)
                  |r $ {} (:at 1635931787251) (:by |u0) (:text "|\".") (:type :leaf)
                  |v $ {} (:at 1635931787251) (:by |u0) (:text |p) (:type :leaf)
        :ns $ {} (:at 1635931787251) (:by |u0) (:type :expr)
          :data $ {}
            |T $ {} (:at 1635931787251) (:by |u0) (:text |ns) (:type :leaf)
            |j $ {} (:at 1635931787251) (:by |u0) (:text |wasmtime.util) (:type :leaf)
            |r $ {} (:at 1635931787251) (:by |u0) (:type :expr)
              :data $ {}
                |T $ {} (:at 1635931787251) (:by |u0) (:text |:require) (:type :leaf)
                |j $ {} (:at 1635931787251) (:by |u0) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1635931787251) (:by |u0) (:text |wasmtime.$meta) (:type :leaf)
                    |j $ {} (:at 1635931787251) (:by |u0) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1635931787251) (:by |u0) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1635931787251) (:by |u0) (:text |calcit-dirname) (:type :leaf)
                        |j $ {} (:at 1635931787251) (:by |u0) (:text |calcit-filename) (:type :leaf)
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
