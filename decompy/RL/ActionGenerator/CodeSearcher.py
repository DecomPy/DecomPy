from decompy.RL.Action import SwapAction


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

    @staticmethod
    def find_swaps(llvm_current_state):
        """
        Takes in the current llvm state and generates a list of swap actions on it.
        :param llvm_current_state: the unoptimized llvm
        :type: string
        :return: list of swap actions
        :rtype: list<SwapAction>
        """
        return []

