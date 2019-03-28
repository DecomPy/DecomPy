from decompy.RL.Action.OptPassActions.OptPassAction import OptPassAction


class ADCEPassAction(OptPassAction):

    def __init__(self):
        super().__init__("opt_adce")
        self.command_line_command = "opt -adce -S module.ll -o output.ll"


if __name__ == "__main__":
    with open('example.ll') as f:
        llvm_string = f.read()

    opt_pass = ADCEPassAction()
    opt_pass.do_action(llvm_string)
