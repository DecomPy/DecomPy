from decompy.RL.Action.OptPassActions.OptPassAction import OptPassAction


class AlwaysInlinePassAction(OptPassAction):

    def __init__(self, pass_name):
        super().__init__("opt_always-inline")
        self.command_line_command = "opt -always-inline -S module.ll -o output.ll"


if __name__ == "__main__":
    with open('example.ll') as f:
        llvm_string = f.read()

    opt_pass = AlwaysInlinePassAction()
    opt_pass.do_action(llvm_string)
