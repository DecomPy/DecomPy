#to run you need to instal pygtree: pip install pygtrie

from decompy.EquivalencyClasses.SnippetRepository import SnippetRepository
from decompy.EquivalencyClasses.Tokenizers.Tokenizer import Tokenizer
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
        mytrie = trie.Trie()
        snippetlist = self.database.get_snippets()
        # iterate through the snippets. each snippet should be a snippet obj
        for snippet in snippetlist:
            tokens = snippet.get_meta_tokens()
            mytrie[tokens] = snippet
        return mytrie


def traverse_callback(path_conv, path, children, value=None):
    list1 = []
    if value:
        return path_conv(path)
    children = list(children)
    return children


if __name__ == "__main__":
    tgen = TrieGenerator()
    print("What's in the trie:", [s.llvm for s in tgen.database.get_snippets()])
    t = tgen.generates_trie()
    
    print("element at hello: ", t["hello"])
    print("are there elements past hello?", t.has_subtrie("hello"))
    print("elements from the start of helloagain this is a test hello", [(element.key, element.value) for element in t.prefixes("helloagain this is a test hello")])
    print("is there an element at helloa?", t.has_key("helloa"))
