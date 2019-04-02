from decompy.RL.ActionGenerator.OptPassActions.OptPassAction import OptPassAction

# The following are for opt optimizations
opt_optimizations = ["-adce", "-always-inline", "-argpromotion", "-loop-vectorize", "-break-crit-edges", "-codegenprepare",
                     "-constmerge", "-constprop", "-dce", "-deadargelim", "-die", "-dse", "-functionattrs", "-globaldce",
                     "-globalopt", "-gvn", "-indvars", "-inline", "-instcombine", "-aggressive-instcombine", "-internalize", "-ipconstprop",
                     "-ipsccp", "-jump-threading", "-lcssa", "-licm", "-loop-deletion", "-loop-extract", "-loop-extract-single", "-loop-reduce",
                     "-loop-rotate", "-loop-simplify", "-loop-unroll", "-loop-unroll-and-jam", "-loop-unswitch", "-loweratomic", "-lowerinvoke",
                     "-lowerswitch", "-mem2reg", "-memcpyopt", "-mergefunc", "-mergereturn", "-partial-inliner", "-prune-eh", "-reassociate",
                     "-reg2mem", "-sroa", "-sccp", "-simplifycfg", "-sink", "-strip", "-strip-dead-debug-info", "-strip-dead-prototypes",
                     "-strip-debug-declare", "-strip-nondebug", "-tailcallelim"]
# Optimizations that are not included:
for opt in opt_optimizations:
    pa = PassAction(
        "opt_" + opt[1:],
        "opt " + opt + " -S output" + opt + ".ll -o output" + opt + "_passed.ll",
        llvm_module_string=llvm_unop,
        intermediate_file="output" + opt + ".ll",
        output_file="output" + opt + "_passed.ll")
    pa.requires_llvm_module = True
    return_list.append(pa)


class ConstMergePassAction(OptPassAction):

    def __init__(self, pass_name):
        super().__init__(pass_name)
