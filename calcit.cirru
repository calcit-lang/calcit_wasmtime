
{} (:package |wasmtime)
  :configs $ {} (:init-fn |wasmtime.demo/main!) (:port 6001) (:reload-fn |wasmtime.demo/reload!) (:version |0.0.1)
    :modules $ []
  :entries $ {}
  :files $ {}
    |wasmtime.core $ %{} :FileEntry
      :defs $ {}
        |format-to-wat $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1632069976694) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1632069976694) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1632069976694) (:by |u0) (:text |format-to-wat)
              |r $ %{} :Expr (:at 1632069976694) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1632070284402) (:by |u0) (:text |tree)
              |v $ %{} :Expr (:at 1632070007007) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1635931916985) (:by |u0) (:text |&call-dylib-edn)
                  |j $ %{} :Expr (:at 1632070080784) (:by |u0)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1635931977959) (:by |u0) (:text |get-dylib-path)
                      |r $ %{} :Leaf (:at 1632074746169) (:by |u0) (:text "|\"/dylibs/libcalcit_wasmtime")
                  |o $ %{} :Leaf (:at 1632070307693) (:by |u0) (:text "|\"format_to_wat")
                  |t $ %{} :Leaf (:at 1632070337027) (:by |u0) (:text |tree)
        |run-wat $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1632069994552) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1632069994552) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1632069994552) (:by |u0) (:text |run-wat)
              |r $ %{} :Expr (:at 1632070274884) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1632070274884) (:by |u0) (:text |code)
                  |b $ %{} :Leaf (:at 1731521044167) (:by |u0) (:text |f-name)
                  |j $ %{} :Leaf (:at 1632070274884) (:by |u0) (:text |v0)
              |v $ %{} :Expr (:at 1632070274884) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1635931887019) (:by |u0) (:text |&call-dylib-edn)
                  |j $ %{} :Expr (:at 1632070274884) (:by |u0)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1635931982163) (:by |u0) (:text |get-dylib-path)
                      |r $ %{} :Leaf (:at 1632075624544) (:by |u0) (:text "|\"/dylibs/libcalcit_wasmtime")
                  |n $ %{} :Leaf (:at 1632070297201) (:by |u0) (:text "|\"run_wat")
                  |r $ %{} :Leaf (:at 1632070274884) (:by |u0) (:text |code)
                  |t $ %{} :Leaf (:at 1731520951193) (:by |u0) (:text |f-name)
                  |v $ %{} :Leaf (:at 1632070274884) (:by |u0) (:text |v0)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1632069968920) (:by |u0)
          :data $ {}
            |T $ %{} :Leaf (:at 1632069968920) (:by |u0) (:text |ns)
            |j $ %{} :Leaf (:at 1632069968920) (:by |u0) (:text |wasmtime.core)
            |r $ %{} :Expr (:at 1632070383388) (:by |u0)
              :data $ {}
                |T $ %{} :Leaf (:at 1632070384223) (:by |u0) (:text |:require)
                |r $ %{} :Expr (:at 1635931855730) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1635931859408) (:by |u0) (:text |wasmtime.util)
                    |j $ %{} :Leaf (:at 1635931861251) (:by |u0) (:text |:refer)
                    |r $ %{} :Expr (:at 1635931862086) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1635931870118) (:by |u0) (:text |get-dylib-path)
    |wasmtime.demo $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1632074286145) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1632074286145) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1632074286145) (:by |u0) (:text |main!)
              |r $ %{} :Expr (:at 1632074286145) (:by |u0)
                :data $ {}
              |y $ %{} :Expr (:at 1632075913093) (:by |u0)
                :data $ {}
                  |D $ %{} :Leaf (:at 1632075917193) (:by |u0) (:text |let)
                  |L $ %{} :Expr (:at 1632075919281) (:by |u0)
                    :data $ {}
                      |T $ %{} :Expr (:at 1632075920051) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1632075919837) (:by |u0) (:text |code)
                          |j $ %{} :Expr (:at 1632075942746) (:by |u0)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1658163923544) (:by |u0) (:text |cirru-quote)
                              |j $ %{} :Expr (:at 1658163948925) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1632076150453) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1635932612383) (:by |u0) (:text |module)
                                      |b $ %{} :Expr (:at 1731434309461) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1731434323843) (:by |u0) (:text |type)
                                          |b $ %{} :Leaf (:at 1731434326288) (:by |u0) (:text |$A)
                                          |h $ %{} :Expr (:at 1731434329594) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1731434330555) (:by |u0) (:text |struct)
                                              |b $ %{} :Expr (:at 1731434332198) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1731434334269) (:by |u0) (:text |field)
                                                  |b $ %{} :Leaf (:at 1731434336268) (:by |u0) (:text |i32)
                                              |h $ %{} :Expr (:at 1731434337337) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1731434339140) (:by |u0) (:text |field)
                                                  |b $ %{} :Leaf (:at 1731434340793) (:by |u0) (:text |i64)
                                      |j $ %{} :Expr (:at 1632075947750) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1632075949263) (:by |u0) (:text |func)
                                          |j $ %{} :Expr (:at 1632075950206) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1632075951025) (:by |u0) (:text |export)
                                              |j $ %{} :Leaf (:at 1632075952038) (:by |u0) (:text "|\"main")
                                          |r $ %{} :Expr (:at 1632075954219) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1632075955123) (:by |u0) (:text |param)
                                              |j $ %{} :Leaf (:at 1632075957356) (:by |u0) (:text |i64)
                                          |v $ %{} :Expr (:at 1632075959248) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1632075960105) (:by |u0) (:text |result)
                                              |j $ %{} :Leaf (:at 1632075962207) (:by |u0) (:text |i64)
                                          |x $ %{} :Expr (:at 1632075966316) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1715017039667) (:by |u0) (:text |local.get)
                                              |j $ %{} :Leaf (:at 1632075969250) (:by |u0) (:text |0)
                                          |y $ %{} :Expr (:at 1632075970004) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1632075976907) (:by |u0) (:text |i64.const)
                                              |j $ %{} :Leaf (:at 1632075977845) (:by |u0) (:text |14)
                                          |yT $ %{} :Expr (:at 1632075979874) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1632075983407) (:by |u0) (:text |i64.add)
                                          |yj $ %{} :Expr (:at 1632075984099) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1632075985542) (:by |u0) (:text |return)
                                      |n $ %{} :Expr (:at 1731434754353) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1731434754911) (:by |u0) (:text |func)
                                          |b $ %{} :Expr (:at 1731434755225) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1731434757300) (:by |u0) (:text |export)
                                              |b $ %{} :Leaf (:at 1731434758904) (:by |u0) (:text "|\"demo")
                                          |e $ %{} :Expr (:at 1731520930288) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1731520930288) (:by |u0) (:text |param)
                                              |b $ %{} :Leaf (:at 1731520930288) (:by |u0) (:text |i64)
                                          |h $ %{} :Expr (:at 1731434764973) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1731434766477) (:by |u0) (:text |result)
                                              |b $ %{} :Leaf (:at 1731434770531) (:by |u0) (:text |i64)
                                          |l $ %{} :Expr (:at 1731434772123) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1731434773878) (:by |u0) (:text |local)
                                              |a $ %{} :Leaf (:at 1731434930326) (:by |u0) (:text |$t)
                                              |h $ %{} :Expr (:at 1731434780405) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1731434783198) (:by |u0) (:text |ref)
                                                  |b $ %{} :Leaf (:at 1731434933145) (:by |u0) (:text |$A)
                                          |o $ %{} :Expr (:at 1731434948677) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1731434950370) (:by |u0) (:text |local.set)
                                              |b $ %{} :Leaf (:at 1731434952145) (:by |u0) (:text |$t)
                                              |h $ %{} :Expr (:at 1731434964784) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1731434969785) (:by |u0) (:text |struct.new)
                                                  |b $ %{} :Leaf (:at 1731434975671) (:by |u0) (:text |$A)
                                                  |h $ %{} :Expr (:at 1731434983013) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1731434986156) (:by |u0) (:text |i32.const)
                                                      |b $ %{} :Leaf (:at 1731434988881) (:by |u0) (:text |10)
                                                  |l $ %{} :Expr (:at 1731434983013) (:by |u0)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1731434992450) (:by |u0) (:text |i64.const)
                                                      |b $ %{} :Leaf (:at 1731434993960) (:by |u0) (:text |11)
                                          |q $ %{} :Expr (:at 1731434995902) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1731435031429) (:by |u0) (:text |struct.get)
                                              |b $ %{} :Leaf (:at 1731435059596) (:by |u0) (:text |$A)
                                              |h $ %{} :Leaf (:at 1731435000876) (:by |u0) (:text |1)
                                              |l $ %{} :Expr (:at 1731435062357) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1731435063546) (:by |u0) (:text |local.get)
                                                  |b $ %{} :Leaf (:at 1731435066873) (:by |u0) (:text |$t)
                          |n $ %{} :Expr (:at 1635935008319) (:by |u0)
                            :data $ {}
                              |5 $ %{} :Leaf (:at 1658163977385) (:by |u0) (:text |;)
                              |D $ %{} :Leaf (:at 1635935011569) (:by |u0) (:text |::)
                              |L $ %{} :Leaf (:at 1635935013460) (:by |u0) (:text |'quote)
                              |T $ %{} :Expr (:at 1632075942746) (:by |u0)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1632075944102) (:by |u0) (:text |quote)
                                  |j $ %{} :Expr (:at 1632076150453) (:by |u0)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1632076018122) (:by |u0)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1635932718767) (:by |u0) (:text "|\"module")
                                          |j $ %{} :Expr (:at 1632075947750) (:by |u0)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1635932720255) (:by |u0) (:text "|\"func")
                                              |j $ %{} :Expr (:at 1632075950206) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1635932722655) (:by |u0) (:text "|\"export")
                                                  |j $ %{} :Leaf (:at 1635932724671) (:by |u0) (:text "|\"\"main")
                                              |r $ %{} :Expr (:at 1632075954219) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1635932726461) (:by |u0) (:text "|\"param")
                                                  |j $ %{} :Leaf (:at 1635932728666) (:by |u0) (:text "|\"i64")
                                              |v $ %{} :Expr (:at 1632075959248) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1635932730274) (:by |u0) (:text "|\"result")
                                                  |j $ %{} :Leaf (:at 1635932731904) (:by |u0) (:text "|\"i64")
                                              |x $ %{} :Expr (:at 1632075966316) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1715017043436) (:by |u0) (:text "|\"local.get")
                                                  |j $ %{} :Leaf (:at 1635932734765) (:by |u0) (:text "|\"0")
                                              |y $ %{} :Expr (:at 1632075970004) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1635932736856) (:by |u0) (:text "|\"i64.const")
                                                  |j $ %{} :Leaf (:at 1635932738582) (:by |u0) (:text "|\"14")
                                              |yT $ %{} :Expr (:at 1632075979874) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1635932740707) (:by |u0) (:text "|\"i64.add")
                                              |yj $ %{} :Expr (:at 1632075984099) (:by |u0)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1635932742456) (:by |u0) (:text "|\"return")
                  |P $ %{} :Expr (:at 1632075989206) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1632075990822) (:by |u0) (:text |println)
                      |r $ %{} :Leaf (:at 1632075992459) (:by |u0) (:text |code)
                  |T $ %{} :Expr (:at 1632075552288) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1632075553129) (:by |u0) (:text |println)
                      |j $ %{} :Expr (:at 1632075555222) (:by |u0)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1632075554947) (:by |u0) (:text |run-wat)
                          |j $ %{} :Leaf (:at 1632076062169) (:by |u0) (:text |code)
                          |n $ %{} :Leaf (:at 1731521056444) (:by |u0) (:text "|\"main")
                          |r $ %{} :Leaf (:at 1632075573143) (:by |u0) (:text |13)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1632074478285) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1632074478285) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1632074478285) (:by |u0) (:text |reload!)
              |r $ %{} :Expr (:at 1632074478285) (:by |u0)
                :data $ {}
              |v $ %{} :Expr (:at 1632074480348) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1632074481219) (:by |u0) (:text |println)
                  |j $ %{} :Leaf (:at 1632074484427) (:by |u0) (:text "|\"TODO Reload")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1632074257444) (:by |u0)
          :data $ {}
            |T $ %{} :Leaf (:at 1632074257444) (:by |u0) (:text |ns)
            |j $ %{} :Leaf (:at 1632074257444) (:by |u0) (:text |wasmtime.demo)
            |v $ %{} :Expr (:at 1632074366882) (:by |u0)
              :data $ {}
                |D $ %{} :Leaf (:at 1632074368670) (:by |u0) (:text |:require)
                |T $ %{} :Expr (:at 1632074296193) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1635931837991) (:by |u0) (:text |wasmtime.core)
                    |j $ %{} :Leaf (:at 1632074302652) (:by |u0) (:text |:refer)
                    |r $ %{} :Expr (:at 1632074303686) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1632074313317) (:by |u0) (:text |run-wat)
                        |j $ %{} :Leaf (:at 1632074317943) (:by |u0) (:text |format-to-wat)
    |wasmtime.util $ %{} :FileEntry
      :defs $ {}
        |get-dylib-ext $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1635931787251) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |defmacro)
              |j $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |get-dylib-ext)
              |r $ %{} :Expr (:at 1635931787251) (:by |u0)
                :data $ {}
              |v $ %{} :Expr (:at 1635931787251) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |case-default)
                  |j $ %{} :Expr (:at 1635931787251) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |&get-os)
                  |r $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text "|\".so")
                  |v $ %{} :Expr (:at 1635931787251) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |:macos)
                      |j $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text "|\".dylib")
                  |x $ %{} :Expr (:at 1635931787251) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |:windows)
                      |j $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text "|\".dll")
        |get-dylib-path $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1635931787251) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |get-dylib-path)
              |r $ %{} :Expr (:at 1635931787251) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |p)
              |v $ %{} :Expr (:at 1635931787251) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |str)
                  |j $ %{} :Expr (:at 1635931787251) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |or-current-path)
                      |j $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |calcit-dirname)
                  |r $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |p)
                  |v $ %{} :Expr (:at 1635931787251) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |get-dylib-ext)
        |or-current-path $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1635931787251) (:by |u0)
            :data $ {}
              |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |defn)
              |j $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |or-current-path)
              |r $ %{} :Expr (:at 1635931787251) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |p)
              |v $ %{} :Expr (:at 1635931787251) (:by |u0)
                :data $ {}
                  |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |if)
                  |j $ %{} :Expr (:at 1635931787251) (:by |u0)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |blank?)
                      |j $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |p)
                  |r $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text "|\".")
                  |v $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |p)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1635931787251) (:by |u0)
          :data $ {}
            |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |ns)
            |j $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |wasmtime.util)
            |r $ %{} :Expr (:at 1635931787251) (:by |u0)
              :data $ {}
                |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |:require)
                |j $ %{} :Expr (:at 1635931787251) (:by |u0)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |wasmtime.$meta)
                    |j $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |:refer)
                    |r $ %{} :Expr (:at 1635931787251) (:by |u0)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |calcit-dirname)
                        |j $ %{} :Leaf (:at 1635931787251) (:by |u0) (:text |calcit-filename)
  :users $ {}
    |u0 $ {} (:avatar nil) (:id |u0) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
