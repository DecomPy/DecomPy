from decompy.RL.Action import Action


class PassAction(Action.Action):
    """
    Data Structure for an Action, particularly a list of past actions.
    """

    def __init__(self, pass_name, pass_args_list):
        """
        :param pass_name: the pass name
        :type: str
        :param pass_args_list: the pass list of args
        :type: list<str>
        """
        super(PassAction, self).__init__()
        self.pass_name = pass_name
        self.pass_args_list = pass_args_list
        pass

