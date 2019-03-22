from decompy.RL.Action.Action import Action


class PassAction(Action):
    """
    Data Structure for a LLVM Optimization Pass Action.
    """

    def __init__(self, pass_name, pass_args_list):
        """
        :param pass_name: the pass name
        :type: str
        :param pass_args_list: the pass list of args
        :type: Action
        """
        super(PassAction, self).__init__()
        self.pass_name = pass_name
        self.pass_args = pass_args_list

    def do_action(self):
        """
        an action performed based off an LLVM pass.
        TODO: implementer add more info
        :return:
        """
        pass


# test to see it if runs
if __name__ == "__main__":
    pa = PassAction("test", ("-01", "hello"))
    pa.do_action()