from decompy.EquivalencyClasses.SnippetRepository import SnippetRepository
from decompy.EquivalencyClasses.PatternMatchTrie import PatternMatchTrie as Trie


class TrieGenerator:
    """
    Step 2: The Driver calls the ActionGenerator to get a list of possible actions for the current
    llvm state it received in Step 1.
    """

    def __init__(self):
        self.database = SnippetRepository()
        pass

    def generates_trie(self):
        """
        Generates the Trie
        :return: Trie
        :rtype: Trie
        """
        mytrie = Trie()
        snippetlist = self.database.get_snippets()
        # iterate through the snippets. each snippet should be a snippet obj
        for snippet in snippetlist:
            tokens = snippet.get_meta_tokens()
            mytrie[tokens] = snippet
        return mytrie


if __name__ == "__main__":
    tgen = TrieGenerator()
    print("What's in the trie:", [s.llvm for s in tgen.database.get_snippets()])
    t = tgen.generates_trie()
    
    print(t)
