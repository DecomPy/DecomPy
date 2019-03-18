from decompy.EquivalencyClasses.Tokenizers.CharacterTokenizer import CharacterTokenizer

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

    def find_swaps(self, llvm_current_state):
        """
        Takes in the current llvm state and generates a list of swap actions on it.
        :param llvm_current_state: the unoptimized llvm
        :type: string
        :return: list of actions
        :rtype: list<SwapAction>
        """
        identified = []

        tokens = CharacterTokenizer.tokenize(llvm_current_state, False)
        for starting_cursor in range(len(tokens)):
            identified += trie.prefixes(tokens[starting_cursor:])

        snippets = [s.value for s in identified]

        swaps = []

        for snippet in snippets:
            swaps += [snippet.class_id]  # snippet.swaps

        # These really need to be swap actions not snippets
        return swaps


if __name__ == "__main__":
    from decompy.EquivalencyClasses.TrieGenerator import TrieGenerator
    trieGen = TrieGenerator()
    trie = trieGen.generates_trie()
    codesearcher = CodeSearcher(trie)

    m = "define i32 @mul_add(i32 %x, i32 %y, i32 %z) {\nentry:\n  %tmp = mul i32 %x, %y\n  alloca i32, align 4\n %tmp2 = add  i32 %tmp, %z\n  ret i32 %tmp2\n}"

    swaps = codesearcher.find_swaps(m)

    print(swaps)

