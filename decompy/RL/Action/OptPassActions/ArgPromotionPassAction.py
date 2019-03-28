from decompy.RL.Action.OptPassActions.OptPassAction import OptPassAction


class ArgPromotionPassAction(OptPassAction):

    def __init__(self, pass_name):
        super().__init__("opt_argpromotion")
        self.command_line_command = "opt -argpromotion -S module.ll -o output.ll"


if __name__ == "__main__":
    with open('example.ll') as f:
        llvm_string = f.read()

    cm_pass = ArgPromotionPassAction()
    cm_pass.do_action(llvm_string)
