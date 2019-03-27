from decompy.RL.Action.Action import Action


class PassAction(Action):
    """
    Data Structure for a LLVM Optimization Pass Action.
    """

    def __init__(self, pass_name):
        """
        :param pass_name: the pass name. Unique identifier that remains consistent over separate program runs
        :type: str
        """
        super(PassAction, self).__init__()
        self.pass_name = pass_name

    def do_action(self, llvm):
        """
        an action performed based off an LLVM pass.
        :return:
        """
        pass


# test to see it if runs
if __name__ == "__main__":
    pass
