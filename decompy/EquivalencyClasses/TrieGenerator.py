#to run you need to instal pygtree: pip install pygtrie

from decompy.EquivalencyClasses.SnippetRepository import SnippetRepository
from decompy.EquivalencyClasses.Tokenizers.CharacterTokenizer import CharacterTokenizer
import pygtrie as trie


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
        mytrie = trie.Trie() #what do I put in the constructor?
        snippetlist = self.database.get_snippets()
        # iterate through the snippets. each snippet should be a snippet obj
        for snippet in snippetlist:
            tokens = CharacterTokenizer.tokenize(snippet.llvm)
            mytrie[tokens] = snippet
        return mytrie

def traverse_callback(path_conv, path, children, value=None):
    if value:
        return path_conv(path)
    children = list(children)
    return children

if __name__ == "__main__":
    tgen = TrieGenerator()
    t = tgen.generates_trie()
    print(t.traverse(traverse_callback))
