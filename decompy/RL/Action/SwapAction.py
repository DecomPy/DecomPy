from decompy.RL.Action import Action


class SwapAction(Action.Action):
    """
    Data Structure for an Action, particularly when a swap is performed.
    """

    def __init__(self, snippet, starting_token):
        """
        :param snippet The snippet that was located
        :param starting_token The location of the snippet
        :type: int
        """
        super(SwapAction, self).__init__()
        self.snippet = snippet
        self.starting_token = starting_token

    def __str__(self):
        return "[%s | class: %d, id: %d, index: %d]" % (type(self),
                                                        self.snippet.class_id,
                                                        self.snippet.id,
                                                        self.starting_token)
