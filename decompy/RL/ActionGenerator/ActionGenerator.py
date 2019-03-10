from decompy.RL.Action import Action
from decompy.RL.ActionGenerator import OptimizationLister
from decompy.RL.ActionGenerator import CodeSearcher


class ActionGenerator:
    """
    Step 2: The Driver calls the ActionGenerator to get a list of possible actions for the current
    llvm state it received in Step 1.
    """

    ol = OptimizationLister.OptimizationLister()
    cs = CodeSearcher.CodeSearcher() # TODO: add trie

    def __init__(self):
        """
        init for ActionGenerator
        """
        pass

    def list_actions(self, llvm_unop):
        """
        The driver calls the ActionGenerator to get a list of possible actions for the current
        LLVM state it received in step 1. It could either be a swap_action or an optimization_action.
        :param llvm_unop: the unoptimized llvm
        :type: string
        :return: list of actions
        :rtype: list<Action>
        """

    def __list_swap_actions(self, llvm_unop):
        """
        A list of the possible swap actions based off of the unop llvm.
        :param llvm_unop: the unoptimized llvm
        :type: string
        :return: list of actions
        :rtype: list<Action>
        """
    def __list_optimizations_actions(self, llvm_unop):
        """
        A list of possible optimization actions (Pass Actino) based off the unop llvm.
        :param llvm_unop: the unoptimized llvm
        :type: string
        :return: list of actions
        :rtype: list<Action>
        """
        pass

