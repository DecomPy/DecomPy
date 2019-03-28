from decompy.RL.Action.OptPassActions.OptPassAction import OptPassAction


class ADCEPassAction(OptPassAction):

    def __init__(self, pass_name):
        super().__init__(pass_name)
        self.command_line_command = "opt -adce -S module.ll -o output.ll"


if __name__ == "__main__":
    with open('example.ll') as f:
        llvm_string = f.read()

    opt_pass = ADCEPassAction("opt_adce")
    opt_pass.do_action(llvm_string)
