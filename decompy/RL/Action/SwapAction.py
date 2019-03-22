from decompy.RL.Action.Action import Action


class SwapAction(Action):
    """
    Data Structure for an Action, particularly when a swap is performed.
    """

    def __init__(self, llvm, starting_token):
        """
        :param snippet The snippet that was located
        :param starting_token The location of the snippet
        :type: int
        """
        super(SwapAction, self).__init__()
        self.llvm = llvm
        self.starting_token = starting_token

    def __str__(self):
        return "[%s | starting index: %d, length: %d]" % (type(self),
                                                          self.starting_token,
                                                          len(self.llvm))
      
    def do_action(self):
        """
        an action performed based off swap action.
        TODO: implementer add more info
        :return:
        """
        pass

# test to see it if runs
if __name__ == "__main__":
    pa = SwapAction("%1 = alloca i32, align 4", 10)
    pa.do_action()
