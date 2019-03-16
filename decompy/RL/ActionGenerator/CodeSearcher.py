from decompy.RL.Action import SwapAction
from decompy.RL.ActionGenerator import ActionGenerator


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
    
    def _tokenize_current_state(self, current_state_string):
        return list("This is a sentence and we are searching for snippets which match it")

    def find_swaps(self, llvm_current_state):
        """
        Takes in the current llvm state and generates a list of swap actions on it.
        :param llvm_current_state: the unoptimized llvm
        :type: string
        :return: list of actions
        :rtype: list<SwapAction>
        """
        tokens = self._tokenize_current_state(llvm_current_state)
        for starting_cursor in range(len(tokens)):
            trie.


if __name__ == "__main__":
    from decompy.EquivalencyClasses.TrieGenerator import TrieGenerator
    trieGen = TrieGenerator()
    trie = trieGen.generates_trie()
    codesearcher = CodeSearcher(trie)

