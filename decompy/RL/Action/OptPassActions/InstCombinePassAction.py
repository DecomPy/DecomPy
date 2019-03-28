from decompy.RL.Action.OptPassActions.OptPassAction import OptPassAction


class InstCombinePassAction(OptPassAction):

    def __init__(self, pass_name):
        super().__init__("opt_instcombine")
        self.command_line_command = "opt -instcombine -S module.ll -o output.ll"


if __name__ == "__main__":
    with open('example.ll') as f:
        llvm_string = f.read()

    opt_pass = InstCombinePassAction()
    opt_pass.do_action(llvm_string)
