from decompy.RL.Action import SwapAction
from decompy.RL.ActionGenerator import ActionGenerator


# TODO: decide if I should be extending, then override the method or not? The class diagram shows the same method.
class CodeSearcher:
    """
    Step 2.2 The CodeSearcher looks for all possible swaps which can be made using the Equivalency Classes.
    """

    def __init__(self, trie):
        """
        creates a new code searcher, which relies on the Trie.
        :param trie: the trie structure from the Equivalency Class
        :type: Trie
        """
        self.trie = trie
        pass

    def find_swaps(self, llvm_current_state):
        """
        Takes in the current llvm state and generates a list of swap actions on it.
        :param llvm_current_state: the unoptimized llvm
        :type: string
        :return: list of actions
        :rtype: list<SwapAction>
        """
        pass

