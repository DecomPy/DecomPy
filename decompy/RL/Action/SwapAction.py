from decompy.RL.Action import Action


class SwapAction(Action.Action):
    """
    Data Structure for an Action, particularly when a swap is performed.
    """

    def __init__(self, swap_id):
        """
        :param swap_id: the swap id
        :type: int
        """
        super(SwapAction, self).__init__()
        self.swap_id = swap_id
        pass
