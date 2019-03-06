
class Decision:
    """
    A Decision to hold information for the model to use.
    """

    def __init__(self, summary, reward, action):
        """
        Decision object to hold information for the model to use.
        :param summary: the llvm summary
        :param reward: the reward from this decision
        :param action: the Action this decision performs.
        """
        self.summary = summary
        self.reward = reward
        self.action = action
        pass

