
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
              |v $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1632074291268) (:by |u0)
                  |j $ {} (:text "|\"demo") (:type :leaf) (:at 1632074292067) (:by |u0)
                :type :expr
                :at 1632074288740
                :by |u0
              |x $ {}
                :data $ {}
                  |D $ {} (:text |println) (:type :leaf) (:at 1632074428978) (:by |u0)
                  |T $ {}
                    :data $ {}
                      |T $ {} (:text |format-to-wat) (:type :leaf) (:at 1632074413298) (:by |u0)
                      |j $ {}
                        :data $ {}
                          |D $ {} (:text |quote) (:type :leaf) (:at 1632074624953) (:by |u0)
                          |T $ {}
                            :data $ {}
                              |j $ {}
                                :data $ {}
                                  |T $ {} (:text |a) (:type :leaf) (:at 1632074419592) (:by |u0)
                                  |j $ {} (:text |b) (:type :leaf) (:at 1632074419942) (:by |u0)
                                :type :expr
                                :at 1632074418384
                                :by |u0
                              |r $ {}
                                :data $ {}
                                  |T $ {} (:text |c) (:type :leaf) (:at 1632074421910) (:by |u0)
                                  |j $ {} (:text |d) (:type :leaf) (:at 1632074422414) (:by |u0)
                                :type :expr
                                :at 1632074421418
                                :by |u0
                              |v $ {}
                                :data $ {}
                                  |T $ {} (:text |e) (:type :leaf) (:at 1632075501795) (:by |u0)
                                  |j $ {} (:text |f) (:type :leaf) (:at 1632075502169) (:by |u0)
                                  |r $ {}
                                    :data $ {}
                                      |T $ {} (:text |g) (:type :leaf) (:at 1632075503051) (:by |u0)
                                      |j $ {} (:text |h) (:type :leaf) (:at 1632075503835) (:by |u0)
                                    :type :expr
                                    :at 1632075502744
                                    :by |u0
                                  |v $ {}
                                    :data $ {}
                                      |T $ {} (:text |;;) (:type :leaf) (:at 1632075521782) (:by |u0)
                                      |j $ {} (:text |i) (:type :leaf) (:at 1632075508168) (:by |u0)
                                      |r $ {} (:text |j) (:type :leaf) (:at 1632075508608) (:by |u0)
                                      |v $ {}
                                        :data $ {}
                                          |T $ {} (:text |k) (:type :leaf) (:at 1632075511292) (:by |u0)
                                        :type :expr
                                        :at 1632075511023
                                        :by |u0
                                    :type :expr
                                    :at 1632075507162
                                    :by |u0
                                  |x $ {}
                                    :data $ {}
                                      |T $ {} (:text |l) (:type :leaf) (:at 1632075513852) (:by |u0)
                                      |j $ {} (:text |m) (:type :leaf) (:at 1632075514182) (:by |u0)
                                      |r $ {} (:text |n) (:type :leaf) (:at 1632075514413) (:by |u0)
                                    :type :expr
                                    :at 1632075512082
                                    :by |u0
                                :type :expr
                                :at 1632075500848
                                :by |u0
                            :type :expr
                            :at 1632074417199
                            :by |u0
                        :type :expr
                        :at 1632074621651
                        :by |u0
                    :type :expr
                    :at 1632074413057
                    :by |u0
                :type :expr
                :at 1632074427886
                :by |u0
              |y $ {}
                :data $ {}
                  |T $ {} (:text |println) (:type :leaf) (:at 1632075553129) (:by |u0)
                  |j $ {}
                    :data $ {}
                      |T $ {} (:text |run-wat) (:type :leaf) (:at 1632075554947) (:by |u0)
                      |j $ {} (:text "|\"(module\n  (func (export \"main\") (param i64) (result i64)\n    get_local 0\n    i64.const 14\n    i64.add\n    return)\n)") (:type :leaf) (:at 1632075637883) (:by |u0)
                      |r $ {} (:text |13) (:type :leaf) (:at 1632075573143) (:by |u0)
                    :type :expr
                    :at 1632075555222
                    :by |u0
                :type :expr
                :at 1632075552288
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
