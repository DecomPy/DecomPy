from decompy.EquivalencyClasses.Snippet import Snippet


class ResultSnippet(Snippet):
    """
    This Snippet based class can only be used for uni-directional
    swaps (can only be swapped into). It calculates it's value
    based on the value matched by the previous snippet.
    """
    def __init__(self, id, llvm, class_id, variables, integers_consts=(), integers=None):
        super().__init__(id, llvm, class_id, integers_consts, variables, integers)

    def wrap_variables_with_results(self):
        pass
