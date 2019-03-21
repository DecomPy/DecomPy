from decompy.RL.Action.Action import Action


class SwapAction(Action):
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

    def do_action(self):
        """
        an action performed based off swap action.
        TODO: implementer add more info
        :return:
        """
        pass


# test to see it if runs
if __name__ == "__main__":
    pa = SwapAction(1)
    pa.do_action()
