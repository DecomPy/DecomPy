Optimization Order
*********************
This link lists the optimizations run by Clang on the -O3 setting(
https://lists.llvm.org/pipermail/llvm-dev/2016-May/099440.html ). This may give us some insight into what order the
optimizations need to be done in to be effective. Analysis (a), utility (u) and transformation (t) passes havve been
marked. Passes which we are not considering have been removed. It is useful to note that the number of times that a pass
is run may be significant. Multiple runs of a pass might imply that passes after it require it.

The passes are listed in order starting from the first one run.

(a) -basicaa
(u) -verify
(t) -simplifycfg
(a) -domtree
(t) -sroa
(a) -basicaa
(t) -ipsccp
(t) -globalopt
(t) -deadargelim
(a) -domtree
(t) -instcombine
(t) -simplifycfg
(a) -basiccg
(t) -prune-eh
(t) -inline
(t) -functionattrs
(t) -argpromotion
(a) -domtree
(t) -sroa
(a) -lazy-value-info
(t) -jump-threading
(t) -simplifycfg
(a) -domtree
(t) -instcombine
(t) -tailcallelim
(t) -simplifycfg
(t) -reassociate
(a) -domtree
(a) -loops
(t) -loop-simplify
(t) -lcssa
(t) -loop-rotate
(t) -licm
(t) -loop-unswitch
(t) -instcombine
(a) -scalar-evolution
(t) -loop-simplify
(t) -lcssa
(t) -indvars
(t) -loop-deletion
(t) -loop-unroll
(a) -domtree
(a) -memdep
(t) -gvn
(a) -memdep
(t) -memcpyopt
(t) -sccp
(a) -domtree
(t) -instcombine
(a) -lazy-value-info
(t) -jump-threading
(a) -domtree
(a) -memdep
(t) -dse
(a) -loops
(t) -loop-simplify
(t) -lcssa
(t) -licm
(t) -adce
(t) -simplifycfg
(a) -domtree
(t) -instcombine
(a) -domtree
(a) -loops
(t) -loop-simplify
(t) -lcssa
(t) -loop-rotate
(a) -scalar-evolution
(t) -instcombine
(a) -scalar-evolution
(t) -simplifycfg
(a) -domtree
(t) -instcombine
(a) -loops
(t) -loop-simplify
(t) -lcssa
(a) -scalar-evolution
(t) -loop-unroll
(t) -instcombine
(t) -loop-simplify
(t) -lcssa
(t) -licm
(a) -scalar-evolution
(t) -strip-dead-prototypes
(t) -globaldce
(t) -constmerge
(u) -verify