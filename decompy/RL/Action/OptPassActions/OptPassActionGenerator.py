from decompy.RL.Action.OptPassActions.OptPassAction import OptPassAction


class OptPassActionGenerator:

    @staticmethod
    def generate_opt_pass_actions():
        opt_list = ["-adce", "-argpromotion", "-break-crit-edges", "-constmerge", "-constprop", "-dce", "-deadargelim", "-die", "-dse",
                    "-functionattrs", "-globaldce", "-globalopt", "-gvn", "-indvars", "-inline", "-instcombine", "-jump-threading", "-lcssa", "-licm",
                    "-loop-deletion", "-loop-extract", "-loop-extract-single", "-loop-rotate", "-loop-unswitch", "-lowerinvoke", "-lowerswitch", "-mem2reg",
                    "-mergefunc", "-partial-inliner", "-prune-eh", "-reassociate", "-reg2mem", "-sccp", "-simplifycfg", "-sink", "-strip-dead-prototypes"]

        # Had to remove -deadtypeelim and -block-placement because apparently they don't really exist

        opt_pass_list = []

        for opt in opt_list:
            opt_pass = OptPassAction(opt[1:])
            opt_pass.command_line_command = "opt " + opt + " -S module.ll -o output.ll"
            opt_pass_list.append(opt_pass)

        return opt_pass_list


if __name__ == "__main__":
    with open('example.ll') as f:
        llvm_string = f.read()

    test_list = OptPassActionGenerator.generate_opt_pass_actions()
    for Pass in test_list:
        print(str(Pass))
        Pass.do_action(llvm_string)
