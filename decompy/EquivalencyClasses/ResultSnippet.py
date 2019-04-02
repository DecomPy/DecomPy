from decompy.EquivalencyClasses.Snippet import Snippet
from decompy.EquivalencyClasses.Tokenizers.Tokenizer import Tokenizer


class ResultSnippet(Snippet):
    """
    This Snippet based class can only be used for uni-directional
    swaps (can only be swapped into). It calculates it's value
    based on the value matched by the previous snippet.
    """

    def __init__(self, id, llvm, class_id, results, positive_integer_consts=(), variables=None, positive_integers=None):
        self.results = results
        super().__init__(id, llvm, class_id, positive_integer_consts, variables, positive_integers)

    def _initialize_tokens(self):
        self._meta_tokens, self.variable_dict, \
        self.positive_integer_dict, self.negative_integer_dict, self.signed_integer_dict = \
            Tokenizer.extract_meta_tokens(self._tokens,
                                          self.positive_integer_consts,
                                          variable_dict=self.variable_dict,
                                          results_dict=self.results,
                                          positive_integer_dict=self.positive_integer_dict)

    @classmethod
    def _from_existing(cls, connect_from, connect_to):
        return cls(connect_to.id,
                   connect_to.llvm,
                   connect_to.class_id,
                   results=connect_to.results,
                   variables=connect_from.variable_dict)


if __name__ == "__main__":
    from decompy.EquivalencyClasses.Tokenizers.Tokens.ResultsToken import ResultsToken

    snip = Snippet(0, "%1 = alloca i32, align 4\n-2", 0, positive_integer_consts=('4',), negative_integer_consts=('-2',))

    print(snip.positive_integer_dict)
    print(snip.negative_integer_dict)
    print(snip.signed_integer_dict)

    var4 = snip.positive_integer_dict['4']
    var2 = snip.negative_integer_dict['-2']
    r1 = ResultsToken([lambda x1, x2: x1 + x2, var2, var4])
    results = {'6': r1}

    snip1 = ResultSnippet(1, "$1 alloca i32, align 6", 0, results)

    snip.add_connection(snip1)

    print("unrendered:", snip.get_unrendered_swaps())

    var2 == "-37"
    var4 == "24"

    print("Rendered:", snip.get_rendered_swaps())