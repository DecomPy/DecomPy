from decompy.RL.Action.PassAction import PassAction


class OptimizationLister:
    """
    Step 2.1 The OptimizationLister generates a list of optimization based actions.
    """

    def __init__(self):
        pass

    @staticmethod
    def list_optimizations_actions(llvm_unop):
        """
        The driver calls the ActionGenerator to get a list of possible actions for the current
        LLVM state it received in step 1.
        :param llvm_unop: the unoptimized llvm
        :type: string
        :return: list of pass actions
        :rtype: list<PassAction>
        """
        return_list = []

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

        return return_list


# test to see it if runs
if __name__ == "__main__":
    optimization_list = OptimizationLister.list_optimizations_actions(
        "define i32 @mul_add(i32 %x, i32 %y, i32 %z) {\nentry:\n  %tmp = mul i32 %x, %y\n  %tmp2 = add  i32 %tmp, %z\n  ret i32 %tmp2\n}")
    for optimization in optimization_list:
        optimization.do_action()
