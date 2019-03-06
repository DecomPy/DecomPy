from decompy.RL.Action import Action


class PastAction(Action.Action):
    """
    Data Structure for an Action, particularly a list of past actions.
    """

    def __init__(self, past_name, past_args_list):
        """
        :param pass_name: the pass name
        :type: str
        :param pass_args_list: the pass list of args
        :type: list<str>
        """
        super(PastAction, self).__init__()
        self.pass_name = past_name
        self.pass_args_list = past_args_list
        pass

