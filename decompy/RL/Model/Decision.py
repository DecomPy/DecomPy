import copy

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
        self._summary = summary
        self._reward = reward
        self._action = action

    def related_state(other):
        """
        Determines whether the other Decision occured from
        a similar state by checking if the summary of their
        states was equal. This operation is faster than checking
        the summaries yourself since it does not make any copies.

        :param other: The other Decision object
        :type: Decision
        """
        if isinstance(other, Decision):
            return self._summary == other._summary
        return False

    def same_action(other):
        """
        Check if the action is the same for two decisions (of
        possibly different llvm summary states)
        """
        if isinstance(other, Decision):
            return self._action == other._action
        return False

    def get_summary():
        """
        Creates a deep copy of the summary object to avoid
        unwanted mutations to the model. Be careful to avoid
        repeated calls since this will be expensive.
        """
        return copy.deepcopy(self._summary)

    def get_reward():
        """
        Gets the reward. No copying is needed for an int
        """
        return reward

    def get_action():
        """
        Creates a deep copy of the summary object to avoid
        unwanted mutations to the model. Be careful to avoid
        repeated calls since this will be expensive.
        """
        return copy.deepcopy(self._action)

    def __lt__(other):
        """
        Orders the decisions by their rewards. Useful for choosing
        the best choice.
        """
        return self._reward < other.reward

    def __gt__(other):
        """
        Orders the decisions by their rewards. Useful for choosing
        the best choice.
        """
        return self._reward > other.reward

