
{}
  :users $ {}
    |u0 $ {} (:theme :star-trail) (:id |u0) (:name |chen) (:nickname |chen) (:avatar nil) (:password |d41d8cd98f00b204e9800998ecf8427e)
  :ir $ {} (:package |wasmtime)
    :files $ {}
      |wasmtime.core $ {}
        :ns $ {} (:type :expr) (:by |u0) (:at 1632069968920)
          :data $ {}
            |T $ {} (:type :leaf) (:by |u0) (:at 1632069968920) (:text |ns)
            |j $ {} (:type :leaf) (:by |u0) (:at 1632069968920) (:text |wasmtime.core)
            |r $ {} (:type :expr) (:by |u0) (:at 1632070383388)
              :data $ {}
                |T $ {} (:type :leaf) (:by |u0) (:at 1632070384223) (:text |:require)
                |r $ {} (:type :expr) (:by |u0) (:at 1635931855730)
                  :data $ {}
                    |T $ {} (:type :leaf) (:by |u0) (:at 1635931859408) (:text |wasmtime.util)
                    |j $ {} (:type :leaf) (:by |u0) (:at 1635931861251) (:text |:refer)
                    |r $ {} (:type :expr) (:by |u0) (:at 1635931862086)
                      :data $ {}
                        |T $ {} (:type :leaf) (:by |u0) (:at 1635931870118) (:text |get-dylib-path)
        :configs $ {}
        :defs $ {}
          |run-wat $ {} (:type :expr) (:by |u0) (:at 1632069994552)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1632069994552) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1632069994552) (:text |run-wat)
              |r $ {} (:type :expr) (:by |u0) (:at 1632070274884)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1632070274884) (:text |code)
                  |j $ {} (:type :leaf) (:by |u0) (:at 1632070274884) (:text |v0)
              |v $ {} (:type :expr) (:by |u0) (:at 1632070274884)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1635931887019) (:text |&call-dylib-edn)
                  |j $ {} (:type :expr) (:by |u0) (:at 1632070274884)
                    :data $ {}
                      |j $ {} (:type :leaf) (:by |u0) (:at 1635931982163) (:text |get-dylib-path)
                      |r $ {} (:type :leaf) (:by |u0) (:at 1632075624544) (:text "|\"/dylibs/libcalcit_wasmtime")
                  |n $ {} (:type :leaf) (:by |u0) (:at 1632070297201) (:text "|\"run_wat")
                  |r $ {} (:type :leaf) (:by |u0) (:at 1632070274884) (:text |code)
                  |v $ {} (:type :leaf) (:by |u0) (:at 1632070274884) (:text |v0)
          |format-to-wat $ {} (:type :expr) (:by |u0) (:at 1632069976694)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1632069976694) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1632069976694) (:text |format-to-wat)
              |r $ {} (:type :expr) (:by |u0) (:at 1632069976694)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1632070284402) (:text |tree)
              |v $ {} (:type :expr) (:by |u0) (:at 1632070007007)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1635931916985) (:text |&call-dylib-edn)
                  |j $ {} (:type :expr) (:by |u0) (:at 1632070080784)
                    :data $ {}
                      |j $ {} (:type :leaf) (:by |u0) (:at 1635931977959) (:text |get-dylib-path)
                      |r $ {} (:type :leaf) (:by |u0) (:at 1632074746169) (:text "|\"/dylibs/libcalcit_wasmtime")
                  |o $ {} (:type :leaf) (:by |u0) (:at 1632070307693) (:text "|\"format_to_wat")
                  |t $ {} (:type :leaf) (:by |u0) (:at 1632070337027) (:text |tree)
        :proc $ {} (:type :expr) (:by |u0) (:at 1632069968920)
          :data $ {}
      |wasmtime.demo $ {}
        :ns $ {} (:type :expr) (:by |u0) (:at 1632074257444)
          :data $ {}
            |T $ {} (:type :leaf) (:by |u0) (:at 1632074257444) (:text |ns)
            |j $ {} (:type :leaf) (:by |u0) (:at 1632074257444) (:text |wasmtime.demo)
            |v $ {} (:type :expr) (:by |u0) (:at 1632074366882)
              :data $ {}
                |D $ {} (:type :leaf) (:by |u0) (:at 1632074368670) (:text |:require)
                |T $ {} (:type :expr) (:by |u0) (:at 1632074296193)
                  :data $ {}
                    |T $ {} (:type :leaf) (:by |u0) (:at 1635931837991) (:text |wasmtime.core)
                    |j $ {} (:type :leaf) (:by |u0) (:at 1632074302652) (:text |:refer)
                    |r $ {} (:type :expr) (:by |u0) (:at 1632074303686)
                      :data $ {}
                        |T $ {} (:type :leaf) (:by |u0) (:at 1632074313317) (:text |run-wat)
                        |j $ {} (:type :leaf) (:by |u0) (:at 1632074317943) (:text |format-to-wat)
        :configs $ {}
        :defs $ {}
          |main! $ {} (:type :expr) (:by |u0) (:at 1632074286145)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1632074286145) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1632074286145) (:text |main!)
              |r $ {} (:type :expr) (:by |u0) (:at 1632074286145)
                :data $ {}
              |y $ {} (:type :expr) (:by |u0) (:at 1632075913093)
                :data $ {}
                  |D $ {} (:type :leaf) (:by |u0) (:at 1632075917193) (:text |let)
                  |L $ {} (:type :expr) (:by |u0) (:at 1632075919281)
                    :data $ {}
                      |T $ {} (:type :expr) (:by |u0) (:at 1632075920051)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |u0) (:at 1632075919837) (:text |code)
                          |j $ {} (:type :expr) (:by |u0) (:at 1632075939434)
                            :data $ {}
                              |T $ {} (:type :leaf) (:by |u0) (:at 1632075942052) (:text |format-to-wat)
                              |j $ {} (:type :expr) (:by |u0) (:at 1632075942746)
                                :data $ {}
                                  |T $ {} (:type :leaf) (:by |u0) (:at 1632075944102) (:text |quote)
                                  |j $ {} (:type :expr) (:by |u0) (:at 1632076150453)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |u0) (:at 1635932612383) (:text |module)
                                      |j $ {} (:type :expr) (:by |u0) (:at 1632075947750)
                                        :data $ {}
                                          |yT $ {} (:type :expr) (:by |u0) (:at 1632075979874)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |u0) (:at 1632075983407) (:text |i64.add)
                                          |yj $ {} (:type :expr) (:by |u0) (:at 1632075984099)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |u0) (:at 1632075985542) (:text |return)
                                          |T $ {} (:type :leaf) (:by |u0) (:at 1632075949263) (:text |func)
                                          |j $ {} (:type :expr) (:by |u0) (:at 1632075950206)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |u0) (:at 1632075951025) (:text |export)
                                              |j $ {} (:type :leaf) (:by |u0) (:at 1632075952038) (:text "|\"main")
                                          |r $ {} (:type :expr) (:by |u0) (:at 1632075954219)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |u0) (:at 1632075955123) (:text |param)
                                              |j $ {} (:type :leaf) (:by |u0) (:at 1632075957356) (:text |i64)
                                          |v $ {} (:type :expr) (:by |u0) (:at 1632075959248)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |u0) (:at 1632075960105) (:text |result)
                                              |j $ {} (:type :leaf) (:by |u0) (:at 1632075962207) (:text |i64)
                                          |x $ {} (:type :expr) (:by |u0) (:at 1632075966316)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |u0) (:at 1632075968918) (:text |get_local)
                                              |j $ {} (:type :leaf) (:by |u0) (:at 1632075969250) (:text |0)
                                          |y $ {} (:type :expr) (:by |u0) (:at 1632075970004)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |u0) (:at 1632075976907) (:text |i64.const)
                                              |j $ {} (:type :leaf) (:by |u0) (:at 1632075977845) (:text |14)
                              |r $ {} (:type :expr) (:by |u0) (:at 1635935008319)
                                :data $ {}
                                  |5 $ {} (:type :leaf) (:by |u0) (:at 1635960598610) (:text |;)
                                  |D $ {} (:type :leaf) (:by |u0) (:at 1635935011569) (:text |::)
                                  |L $ {} (:type :leaf) (:by |u0) (:at 1635935013460) (:text |'quote)
                                  |T $ {} (:type :expr) (:by |u0) (:at 1632075942746)
                                    :data $ {}
                                      |T $ {} (:type :leaf) (:by |u0) (:at 1632075944102) (:text |quote)
                                      |j $ {} (:type :expr) (:by |u0) (:at 1632076150453)
                                        :data $ {}
                                          |T $ {} (:type :expr) (:by |u0) (:at 1632076018122)
                                            :data $ {}
                                              |T $ {} (:type :leaf) (:by |u0) (:at 1635932718767) (:text "|\"module")
                                              |j $ {} (:type :expr) (:by |u0) (:at 1632075947750)
                                                :data $ {}
                                                  |yT $ {} (:type :expr) (:by |u0) (:at 1632075979874)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |u0) (:at 1635932740707) (:text "|\"i64.add")
                                                  |yj $ {} (:type :expr) (:by |u0) (:at 1632075984099)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |u0) (:at 1635932742456) (:text "|\"return")
                                                  |T $ {} (:type :leaf) (:by |u0) (:at 1635932720255) (:text "|\"func")
                                                  |j $ {} (:type :expr) (:by |u0) (:at 1632075950206)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |u0) (:at 1635932722655) (:text "|\"export")
                                                      |j $ {} (:type :leaf) (:by |u0) (:at 1635932724671) (:text "|\"\"main")
                                                  |r $ {} (:type :expr) (:by |u0) (:at 1632075954219)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |u0) (:at 1635932726461) (:text "|\"param")
                                                      |j $ {} (:type :leaf) (:by |u0) (:at 1635932728666) (:text "|\"i64")
                                                  |v $ {} (:type :expr) (:by |u0) (:at 1632075959248)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |u0) (:at 1635932730274) (:text "|\"result")
                                                      |j $ {} (:type :leaf) (:by |u0) (:at 1635932731904) (:text "|\"i64")
                                                  |x $ {} (:type :expr) (:by |u0) (:at 1632075966316)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |u0) (:at 1635932733539) (:text "|\"get_local")
                                                      |j $ {} (:type :leaf) (:by |u0) (:at 1635932734765) (:text "|\"0")
                                                  |y $ {} (:type :expr) (:by |u0) (:at 1632075970004)
                                                    :data $ {}
                                                      |T $ {} (:type :leaf) (:by |u0) (:at 1635932736856) (:text "|\"i64.const")
                                                      |j $ {} (:type :leaf) (:by |u0) (:at 1635932738582) (:text "|\"14")
                  |P $ {} (:type :expr) (:by |u0) (:at 1632075989206)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1632075990822) (:text |println)
                      |r $ {} (:type :leaf) (:by |u0) (:at 1632075992459) (:text |code)
                  |T $ {} (:type :expr) (:by |u0) (:at 1632075552288)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1632075553129) (:text |println)
                      |j $ {} (:type :expr) (:by |u0) (:at 1632075555222)
                        :data $ {}
                          |T $ {} (:type :leaf) (:by |u0) (:at 1632075554947) (:text |run-wat)
                          |j $ {} (:type :leaf) (:by |u0) (:at 1632076062169) (:text |code)
                          |r $ {} (:type :leaf) (:by |u0) (:at 1632075573143) (:text |13)
          |reload! $ {} (:type :expr) (:by |u0) (:at 1632074478285)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1632074478285) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1632074478285) (:text |reload!)
              |r $ {} (:type :expr) (:by |u0) (:at 1632074478285)
                :data $ {}
              |v $ {} (:type :expr) (:by |u0) (:at 1632074480348)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1632074481219) (:text |println)
                  |j $ {} (:type :leaf) (:by |u0) (:at 1632074484427) (:text "|\"TODO Reload")
        :proc $ {} (:type :expr) (:by |u0) (:at 1632074257444)
          :data $ {}
      |wasmtime.util $ {}
        :ns $ {} (:type :expr) (:by |u0) (:at 1635931787251)
          :data $ {}
            |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |ns)
            |j $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |wasmtime.util)
            |r $ {} (:type :expr) (:by |u0) (:at 1635931787251)
              :data $ {}
                |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |:require)
                |j $ {} (:type :expr) (:by |u0) (:at 1635931787251)
                  :data $ {}
                    |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |wasmtime.$meta)
                    |j $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |:refer)
                    |r $ {} (:type :expr) (:by |u0) (:at 1635931787251)
                      :data $ {}
                        |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |calcit-dirname)
                        |j $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |calcit-filename)
        :defs $ {}
          |get-dylib-ext $ {} (:type :expr) (:by |u0) (:at 1635931787251)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |defmacro)
              |j $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |get-dylib-ext)
              |r $ {} (:type :expr) (:by |u0) (:at 1635931787251)
                :data $ {}
              |v $ {} (:type :expr) (:by |u0) (:at 1635931787251)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |case-default)
                  |j $ {} (:type :expr) (:by |u0) (:at 1635931787251)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |&get-os)
                  |r $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text "|\".so")
                  |v $ {} (:type :expr) (:by |u0) (:at 1635931787251)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |:macos)
                      |j $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text "|\".dylib")
                  |x $ {} (:type :expr) (:by |u0) (:at 1635931787251)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |:windows)
                      |j $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text "|\".dll")
          |get-dylib-path $ {} (:type :expr) (:by |u0) (:at 1635931787251)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |get-dylib-path)
              |r $ {} (:type :expr) (:by |u0) (:at 1635931787251)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |p)
              |v $ {} (:type :expr) (:by |u0) (:at 1635931787251)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |str)
                  |j $ {} (:type :expr) (:by |u0) (:at 1635931787251)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |or-current-path)
                      |j $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |calcit-dirname)
                  |r $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |p)
                  |v $ {} (:type :expr) (:by |u0) (:at 1635931787251)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |get-dylib-ext)
          |or-current-path $ {} (:type :expr) (:by |u0) (:at 1635931787251)
            :data $ {}
              |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |defn)
              |j $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |or-current-path)
              |r $ {} (:type :expr) (:by |u0) (:at 1635931787251)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |p)
              |v $ {} (:type :expr) (:by |u0) (:at 1635931787251)
                :data $ {}
                  |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |if)
                  |j $ {} (:type :expr) (:by |u0) (:at 1635931787251)
                    :data $ {}
                      |T $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |blank?)
                      |j $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |p)
                  |r $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text "|\".")
                  |v $ {} (:type :leaf) (:by |u0) (:at 1635931787251) (:text |p)
  :configs $ {} (:port 6001) (:init-fn |wasmtime.demo/main!) (:reload-fn |wasmtime.demo/reload!)
    :modules $ []
    :version |0.0.1
