from decompy.RL.Action.OptPassActions.OptPassAction import OptPassAction


class ConstMergePassAction(OptPassAction):

    def __init__(self, pass_name):
        super().__init__("opt_constmerge")
        self.command_line_command = "opt -constmerge -S module.ll -o output.ll"


if __name__ == "__main__":
    with open('example.ll') as f:
        llvm_string = f.read()

    cm_pass = ConstMergePassAction()
    cm_pass.do_action(llvm_string)
