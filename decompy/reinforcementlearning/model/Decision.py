
class Decision:
    """
    A Decision to hold information for the model to use.
    """

    def __init__(self, summary, reward, action):
        """
        Decision object to hold information for the model to use.
        :param summary: the llvm summary
        :type: LLVMSummary
        :param reward: the reward from this decision
        :type: int
        :param action: the Action this decision performs.
        :type: Action
        """
        self.summary = summary
        self.reward = reward
        self.action = action
        pass

