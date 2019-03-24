from decompy.EquivalencyClasses.Snippet import Snippet
from decompy.EquivalencyClasses.Tokenizers.Tokenizer import Tokenizer


class ResultSnippet(Snippet):
    """
    This Snippet based class can only be used for uni-directional
    swaps (can only be swapped into). It calculates it's value
    based on the value matched by the previous snippet.
    """
    def __init__(self, id, llvm, class_id, results, integers_consts=(), variables=None, integers=None):
        self.results = results
        super().__init__(id, llvm, class_id, integers_consts, variables, integers)

    def _initialize_tokens(self):
        self._meta_tokens, self.variable_dict, self.integer_dict = \
            Tokenizer.extract_meta_tokens(self._tokens,
                                          self.integer_consts,
                                          variable_dict=self.variable_dict,
                                          results_dict=self.results,
                                          integer_dict=self.integer_dict)

    @classmethod
    def _from_existing(cls, connect_from, connect_to):
        return cls(connect_to.id,
                   connect_to.llvm,
                   connect_to.class_id,
                   results=connect_to.results)


if __name__ == "__main__":
    from decompy.EquivalencyClasses.Tokenizers.Tokens.ResultsToken import ResultsToken

    snip = Snippet(0, "%1 = alloca i32, align 4\n2", 0, integers_consts=('4', '2'))

    var4 = snip.integer_dict['4']
    var2 = snip.integer_dict['2']
    r1 = ResultsToken([lambda x1, x2: x1 + x2, var2, var4])
    results = {'6': r1}

    snip1 = ResultSnippet(1, "$1 alloca i32, align 6", 0, results)

    snip.add_connection(snip1)

    print(snip.get_unrendered_swaps())

    var2 == "12"
    var4 == "24"

    print(snip.get_rendered_swaps())


