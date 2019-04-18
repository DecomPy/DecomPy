from decompy.reinforcementlearning.actiongenerator.OptimizationLister import OptimizationLister
from decompy.reinforcementlearning.actiongenerator.CodeSearcher import CodeSearcher
from decompy.equivalencyclasses.TrieGenerator import TrieGenerator


class ActionGenerator:
    """
    Step 2: The Driver calls the ActionGenerator to get a list of possible actions for the current
    llvm state it received in Step 1.
    """

    trie = TrieGenerator().generates_trie()
    ol = OptimizationLister()
    cs = CodeSearcher(trie)

    def __init__(self):
        """
        init for ActionGenerator
        """

    def list_actions(self, llvm_unop):
        """
        The driver calls the ActionGenerator to get a list of possible actions for the current
        LLVM state it received in step 1. It could either be a swap_action or an optimization_action.
        :param llvm_unop: the unoptimized llvm
        :type: string
        :return: list of actions
        :rtype: list<Action>
        """
        return self.__list_swap_actions(llvm_unop) + self.__list_optimizations_actions(llvm_unop)

    def __list_swap_actions(self, llvm_unop):
        """
        A list of the possible swap actions based off of the unop llvm.
        :param llvm_unop: the unoptimized llvm
        :type: string
        :return: list of swap actions
        :rtype: list<Action>
        """
        return self.cs.find_swaps(llvm_unop)

    def __list_optimizations_actions(self, llvm_unop):
        """
        A list of possible optimization actions (Pass Action) based off the unop llvm.
        :param llvm_unop: the unoptimized llvm
        :type: string
        :return: list of pass actions
        :rtype: list<Action>
        """
        return self.ol.list_optimizations_actions(llvm_unop)

