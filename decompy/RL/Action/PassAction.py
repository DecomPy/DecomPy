from decompy.RL.Action import Action


class PassAction(Action.Action):
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
        pass

