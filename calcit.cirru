
{}
  :configs $ {} (:reload-fn |calcit.wasmtime.demo/reload!) (:port 6001) (:version |0.0.1)
    :modules $ []
    :init-fn |calcit.wasmtime.demo/main!
  :ir $ {} (:package |calcit.wasmtime)
    :files $ {}
      |calcit.wasmtime.demo $ {}
        :defs $ {}
          |main! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1632074286145) (:by |u0)
              |j $ {} (:text |main!) (:type :leaf) (:at 1632074286145) (:by |u0)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1632074286145
                :by |u0
              |y $ {}
                :data $ {}
                  |D $ {} (:text |let) (:type :leaf) (:at 1632075917193) (:by |u0)
                  |L $ {}
                    :data $ {}
                      |T $ {}
                        :data $ {}
                          |T $ {} (:text |code) (:type :leaf) (:at 1632075919837) (:by |u0)
                          |j $ {}
                            :data $ {}
                              |T $ {} (:text |format-to-wat) (:type :leaf) (:at 1632075942052) (:by |u0)
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |quote) (:type :leaf) (:at 1632075944102) (:by |u0)
                                  |j $ {}
                                    :data $ {}
                                      |T $ {}
                                        :data $ {}
                                          |T $ {} (:text |module) (:type :leaf) (:at 1632075946605) (:by |u0)
                                          |j $ {}
                                            :data $ {}
                                              |yT $ {}
                                                :data $ {}
                                                  |T $ {} (:text |i64.add) (:type :leaf) (:at 1632075983407) (:by |u0)
                                                :type :expr
                                                :at 1632075979874
                                                :by |u0
                                              |yj $ {}
                                                :data $ {}
                                                  |T $ {} (:text |return) (:type :leaf) (:at 1632075985542) (:by |u0)
                                                :type :expr
                                                :at 1632075984099
                                                :by |u0
                                              |T $ {} (:text |func) (:type :leaf) (:at 1632075949263) (:by |u0)
                                              |j $ {}
                                                :data $ {}
                                                  |T $ {} (:text |export) (:type :leaf) (:at 1632075951025) (:by |u0)
                                                  |j $ {} (:text "|\"main") (:type :leaf) (:at 1632075952038) (:by |u0)
                                                :type :expr
                                                :at 1632075950206
                                                :by |u0
                                              |r $ {}
                                                :data $ {}
                                                  |T $ {} (:text |param) (:type :leaf) (:at 1632075955123) (:by |u0)
                                                  |j $ {} (:text |i64) (:type :leaf) (:at 1632075957356) (:by |u0)
                                                :type :expr
                                                :at 1632075954219
                                                :by |u0
                                              |v $ {}
                                                :data $ {}
                                                  |T $ {} (:text |result) (:type :leaf) (:at 1632075960105) (:by |u0)
                                                  |j $ {} (:text |i64) (:type :leaf) (:at 1632075962207) (:by |u0)
                                                :type :expr
                                                :at 1632075959248
                                                :by |u0
                                              |x $ {}
                                                :data $ {}
                                                  |T $ {} (:text |get_local) (:type :leaf) (:at 1632075968918) (:by |u0)
                                                  |j $ {} (:text |0) (:type :leaf) (:at 1632075969250) (:by |u0)
                                                :type :expr
                                                :at 1632075966316
                                                :by |u0
                                              |y $ {}
                                                :data $ {}
                                                  |T $ {} (:text |i64.const) (:type :leaf) (:at 1632075976907) (:by |u0)
                                                  |j $ {} (:text |14) (:type :leaf) (:at 1632075977845) (:by |u0)
                                                :type :expr
                                                :at 1632075970004
                                                :by |u0
                                            :type :expr
                                            :at 1632075947750
                                            :by |u0
                                        :type :expr
                                        :at 1632076018122
                                        :by |u0
                                    :type :expr
                                    :at 1632076150453
                                    :by |u0
                                :type :expr
                                :at 1632075942746
                                :by |u0
                            :type :expr
                            :at 1632075939434
                            :by |u0
                        :type :expr
                        :at 1632075920051
                        :by |u0
                    :type :expr
                    :at 1632075919281
                    :by |u0
                  |P $ {}
                    :data $ {}
                      |T $ {} (:text |println) (:type :leaf) (:at 1632075990822) (:by |u0)
                      |r $ {} (:text |code) (:type :leaf) (:at 1632075992459) (:by |u0)
                    :type :expr
                    :at 1632075989206
                    :by |u0
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |println) (:type :leaf) (:at 1632075553129) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |run-wat) (:type :leaf) (:at 1632075554947) (:by |u0)
                          |j $ {} (:text |code) (:type :leaf) (:at 1632076062169) (:by |u0)
                          |r $ {} (:text |13) (:type :leaf) (:at 1632075573143) (:by |u0)
                        :type :expr
                        :at 1632075555222
                        :by |u0
                    :type :expr
                    :at 1632075552288
                    :by |u0
                :type :expr
                :at 1632075913093
                :by |u0
            :type :expr
            :at 1632074286145
            :by |u0
          |reload! $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1632074478285) (:by |u0)
              |j $ {} (:text |reload!) (:type :leaf) (:at 1632074478285) (:by |u0)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1632074478285
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1632074481219) (:by |u0)
                  |j $ {} (:text "|\"TODO Reload") (:type :leaf) (:at 1632074484427) (:by |u0)
                :type :expr
                :at 1632074480348
                :by |u0
            :type :expr
            :at 1632074478285
            :by |u0
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1632074257444
          :by |u0
        :configs $ {}
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1632074257444) (:by |u0)
            |j $ {} (:text |calcit.wasmtime.demo) (:type :leaf) (:at 1632074257444) (:by |u0)
            |v $ {}
              :data $ {}
                |D $ {} (:text |:require) (:type :leaf) (:at 1632074368670) (:by |u0)
                |T $ {}
                  :data $ {}
                    |T $ {} (:text |calcit.wasmtime) (:type :leaf) (:at 1632074301739) (:by |u0)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1632074302652) (:by |u0)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |run-wat) (:type :leaf) (:at 1632074313317) (:by |u0)
                        |j $ {} (:text |format-to-wat) (:type :leaf) (:at 1632074317943) (:by |u0)
                      :type :expr
                      :at 1632074303686
                      :by |u0
                  :type :expr
                  :at 1632074296193
                  :by |u0
              :type :expr
              :at 1632074366882
              :by |u0
          :type :expr
          :at 1632074257444
          :by |u0
      |calcit.wasmtime $ {}
        :defs $ {}
          |run-wat $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1632069994552) (:by |u0)
              |j $ {} (:text |run-wat) (:type :leaf) (:at 1632069994552) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |code) (:type :leaf) (:at 1632070274884) (:by |u0)
                  |j $ {} (:text |v0) (:type :leaf) (:at 1632070274884) (:by |u0)
                :type :expr
                :at 1632070274884
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |&call-dylib:str-i64->i64) (:type :leaf) (:at 1632075597940) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |str) (:type :leaf) (:at 1632070274884) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |or-current-path) (:type :leaf) (:at 1632070274884) (:by |u0)
                          |j $ {} (:text |calcit-dirname) (:type :leaf) (:at 1632070274884) (:by |u0)
                        :type :expr
                        :at 1632070274884
                        :by |u0
                      |r $ {} (:text "|\"/dylibs/libcalcit_wasmtime") (:type :leaf) (:at 1632075624544) (:by |u0)
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |get-dylib-ext) (:type :leaf) (:at 1632070274884) (:by |u0)
                        :type :expr
                        :at 1632070274884
                        :by |u0
                    :type :expr
                    :at 1632070274884
                    :by |u0
                  |n $ {} (:text "|\"run_wat") (:type :leaf) (:at 1632070297201) (:by |u0)
                  |r $ {} (:text |code) (:type :leaf) (:at 1632070274884) (:by |u0)
                  |v $ {} (:text |v0) (:type :leaf) (:at 1632070274884) (:by |u0)
                :type :expr
                :at 1632070274884
                :by |u0
            :type :expr
            :at 1632069994552
            :by |u0
          |get-dylib-ext $ {}
            :data $ {}
              |T $ {} (:text |defmacro) (:type :leaf) (:at 1632070222266) (:by |u0)
              |j $ {} (:text |get-dylib-ext) (:type :leaf) (:at 1632070222266) (:by |u0)
              |r $ {}
                :data $ {}
                :type :expr
                :at 1632070222266
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |case-default) (:type :leaf) (:at 1632070222266) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |&get-os) (:type :leaf) (:at 1632070222266) (:by |u0)
                    :type :expr
                    :at 1632070222266
                    :by |u0
                  |r $ {} (:text "|\".so") (:type :leaf) (:at 1632070222266) (:by |u0)
                  |v $ {}
                    :data $ {}
                      |T $ {} (:text |:macos) (:type :leaf) (:at 1632070222266) (:by |u0)
                      |j $ {} (:text "|\".dylib") (:type :leaf) (:at 1632070222266) (:by |u0)
                    :type :expr
                    :at 1632070222266
                    :by |u0
                  |x $ {}
                    :data $ {}
                      |T $ {} (:text |:windows) (:type :leaf) (:at 1632070222266) (:by |u0)
                      |j $ {} (:text "|\".dll") (:type :leaf) (:at 1632070222266) (:by |u0)
                    :type :expr
                    :at 1632070222266
                    :by |u0
                :type :expr
                :at 1632070222266
                :by |u0
            :type :expr
            :at 1632070222266
            :by |u0
          |format-to-wat $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1632069976694) (:by |u0)
              |j $ {} (:text |format-to-wat) (:type :leaf) (:at 1632069976694) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |tree) (:type :leaf) (:at 1632070284402) (:by |u0)
                :type :expr
                :at 1632069976694
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |&call-dylib:cirru->str) (:type :leaf) (:at 1632074582424) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |str) (:type :leaf) (:at 1632070080784) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |T $ {} (:text |or-current-path) (:type :leaf) (:at 1632070080784) (:by |u0)
                          |j $ {} (:text |calcit-dirname) (:type :leaf) (:at 1632074931999) (:by |u0)
                        :type :expr
                        :at 1632070080784
                        :by |u0
                      |r $ {} (:text "|\"/dylibs/libcalcit_wasmtime") (:type :leaf) (:at 1632074746169) (:by |u0)
                      |v $ {}
                        :data $ {}
                          |T $ {} (:text |get-dylib-ext) (:type :leaf) (:at 1632070080784) (:by |u0)
                        :type :expr
                        :at 1632070080784
                        :by |u0
                    :type :expr
                    :at 1632070080784
                    :by |u0
                  |o $ {} (:text "|\"format_to_wat") (:type :leaf) (:at 1632070307693) (:by |u0)
                  |t $ {} (:text |tree) (:type :leaf) (:at 1632070337027) (:by |u0)
                :type :expr
                :at 1632070007007
                :by |u0
            :type :expr
            :at 1632069976694
            :by |u0
          |or-current-path $ {}
            :data $ {}
              |T $ {} (:text |defn) (:type :leaf) (:at 1632074603954) (:by |u0)
              |j $ {} (:text |or-current-path) (:type :leaf) (:at 1632074603954) (:by |u0)
              |r $ {}
                :data $ {}
                  |T $ {} (:text |p) (:type :leaf) (:at 1632074603954) (:by |u0)
                :type :expr
                :at 1632074603954
                :by |u0
              |v $ {}
                :data $ {}
                  |T $ {} (:text |if) (:type :leaf) (:at 1632074603954) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |blank?) (:type :leaf) (:at 1632074603954) (:by |u0)
                      |j $ {} (:text |p) (:type :leaf) (:at 1632074603954) (:by |u0)
                    :type :expr
                    :at 1632074603954
                    :by |u0
                  |r $ {} (:text "|\".") (:type :leaf) (:at 1632074603954) (:by |u0)
                  |v $ {} (:text |p) (:type :leaf) (:at 1632074603954) (:by |u0)
                :type :expr
                :at 1632074603954
                :by |u0
            :type :expr
            :at 1632074603954
            :by |u0
        :proc $ {}
          :data $ {}
          :type :expr
          :at 1632069968920
          :by |u0
        :configs $ {}
        :ns $ {}
          :data $ {}
            |T $ {} (:text |ns) (:type :leaf) (:at 1632069968920) (:by |u0)
            |j $ {} (:text |calcit.wasmtime) (:type :leaf) (:at 1632069968920) (:by |u0)
            |r $ {}
              :data $ {}
                |T $ {} (:text |:require) (:type :leaf) (:at 1632070384223) (:by |u0)
                |j $ {}
                  :data $ {}
                    |T $ {} (:text |calcit.wasmtime.$meta) (:type :leaf) (:at 1632075093975) (:by |u0)
                    |j $ {} (:text |:refer) (:type :leaf) (:at 1632070396503) (:by |u0)
                    |r $ {}
                      :data $ {}
                        |T $ {} (:text |calcit-dirname) (:type :leaf) (:at 1632070401113) (:by |u0)
                      :type :expr
                      :at 1632070397008
                      :by |u0
                  :type :expr
                  :at 1632070385320
                  :by |u0
              :type :expr
              :at 1632070383388
              :by |u0
          :type :expr
          :at 1632069968920
          :by |u0
  :users $ {}
    |u0 $ {} (:avatar nil) (:name |chen) (:nickname |chen) (:id |u0) (:theme :star-trail) (:password |d41d8cd98f00b204e9800998ecf8427e)
