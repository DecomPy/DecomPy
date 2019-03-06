from decompy.RL.Action import Action


class ActionChooser:
    """
    Step 3: The Driver calls ActionChooser using the list of Actions from step 2 and the LLVMSummary from step 1.
    The ActionChooser then decides on an Action.
    """

    def __init__(self):
        pass

    def choose_action(self, actions, llvm_summary):
        """
        chooses an action from the list of actions and based off the llvm summary.
        :param actions: the list of Actions.
        :type: list<Action>
        :param llvm_summary: the LLVM summary.
        :type: LLVMSummary
        :return: a chosen action
        :rtype: Action
        """
        pass

    def __choose_best_action(self, actions, llvm_summary):
        """
        Step 3.a The ActionChooser will choose the best Action using the known model with probability epsilon.
        :param actions: the list of Actions.
        :type: list<Action>
        :param llvm_summary: the LLVM summary
        :type: LLVMSummary
        :return: the best Action
        :rtype: Action
        """
        pass

    def __choose_random_action(self, actions):
        """
        Step 3.b The ActionChooser will choose a random Action with probability (1 - epsilon)
        :param actions: the list of Actions.
        :return: a random Action.
        :rtype: Action
        """
        pass


