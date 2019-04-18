# TODO: decide how to implement id (from database?)
from decompy.EquivalencyClasses.Tokenizers.Tokenizer import Tokenizer
from decompy.EquivalencyClasses.Tokenizers.Tokens.Token import Token


class Snippet:
    """
    A snippet representation from the database.
    """

    def __init__(self, id, llvm, class_id,
                 positive_integer_consts=(), negative_integer_consts=(), signed_integer_consts=(),
                 positive_integers=None, negative_integers=None, signed_integers=None,
                 variables=None):
        """

        :param id: The id of the snippet
        :param llvm: The llvm that this snippet handles
        :param class_id: The class id of the llvm
        :param positive_integer_consts: All integer constants which exist in the snippet
        :param variables: An optional parameter for mapping between snippets (use pre-existing tokens for variables)
        :param positive_integers: An optional parameter for mapping between snippets (use pre-existing tokens for constants)
        """
        if positive_integers is None:
            positive_integers = {}
        if negative_integers is None:
            negative_integers = {}
        if signed_integers is None:
            signed_integers = {}
        if variables is None:
            variables = {}

        self.id = id
        self.llvm = llvm
        self.class_id = class_id

        self.positive_integer_consts = positive_integer_consts
        self.negative_integer_consts = negative_integer_consts
        self.signed_integer_consts = signed_integer_consts

        self.positive_integer_dict = positive_integers
        self.negative_integer_dict = negative_integers
        self.signed_integer_dict = signed_integers

        self.variable_dict = variables

        self._tokens = Tokenizer.tokenize(self.llvm, True)
        self._swaps = []
        self._initialize_tokens()

    def _initialize_tokens(self):
        self._meta_tokens, self.variable_dict, \
        self.positive_integer_dict, self.negative_integer_dict, self.signed_integer_dict = \
            Tokenizer.extract_meta_tokens(self._tokens,
                                          self.positive_integer_consts,
                                          self.negative_integer_consts,
                                          self.signed_integer_consts,
                                          variable_dict=self.variable_dict,
                                          positive_integer_dict=self.positive_integer_dict,
                                          negative_integer_dict=self.negative_integer_dict,
                                          signed_integer_dict=self.signed_integer_dict)

    @classmethod
    def _from_existing(cls, connect_from, connect_to):
        return cls(connect_to.id,
                   connect_to.llvm,
                   connect_to.class_id,
                   variables=connect_from.variable_dict,
                   positive_integers=connect_from.positive_integer_dict,
                   negative_integers=connect_from.negative_integer_dict,
                   signed_integers=connect_from.signed_integer_dict)

    def add_connection(self, other):
        self._swaps.append(other.__class__._from_existing(self, other))

    def get_meta_tokens(self):
        return self._meta_tokens

    def get_swaps(self):
        return self._swaps

    def render(self):
        return Tokenizer.reassemble(self.get_meta_tokens())

    def get_rendered_swaps(self):
        rendered = []
        for swap in self._swaps:
            rendered_llvm = swap.render()
            rendered.append(rendered_llvm)

        return rendered

    def get_unrendered_swaps(self):
        unrendered = []
        for swap in self._swaps:
            rendered_llvm = ""
            for token in swap.get_meta_tokens():
                rendered_llvm += str(token) \
                    # TODO: Fix this space for newlines and last token
                rendered_llvm += " "
            unrendered.append(rendered_llvm)
        return unrendered

    def __eq__(self, other):
        """
        Determines the equality of this snippet when compared to another snippet
        :param other: the other snippet
        :type: Snippet
        :return: True or False based off of equality.
        :rtype: bool
        """
        pass


if __name__ == "__main__":
    snip = Snippet(0, "%1 = alloca i32, align 4", 0)
    snip1 = Snippet(1, "%1 = alloca i32, align 5", 0)
    snip2 = Snippet(2, "%1 = alloca i32, align 6", 1)
    snip3 = Snippet(3, "%1 = alloca i32, align 7", 0)

    snip.add_connection(snip1)
    snip.add_connection(snip2)
    snip.add_connection(snip3)

    meta = snip.get_meta_tokens()

    print(snip.get_unrendered_swaps())
    print(meta[0] == "%test")
    print(snip.get_rendered_swaps())

    Token.reset_all()
    try:
        print(snip.get_rendered_swaps())
    except AttributeError:
        print("All tokens were reset")
