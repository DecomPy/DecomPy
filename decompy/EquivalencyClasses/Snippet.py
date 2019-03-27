from decompy.EquivalencyClasses.Tokenizers.Tokenizer import Tokenizer
from decompy.EquivalencyClasses.Tokenizers.Tokens.Token import Token


class Snippet:
    """
    A snippet representation from the database.
    """

    def __init__(self, id, llvm, class_id, integers_consts=(), variables=None, integers=None):
        """
        the content of a snippet.
        :param id: the id of the snippet.
        :type: integer
        :param class_id: id of class
        :type: integer
        :param llvm: the llvm snippet
        :type: string
        """
        if integers is None:
            integers = {}
        if variables is None:
            variables = {}

        self.id = id
        self.llvm = llvm
        self.class_id = class_id
        self.integer_consts = integers_consts
        self.variable_dict = variables
        self.integer_dict = integers

        self._tokens = Tokenizer.tokenize(self.llvm, True)
        self._meta_tokens, self.variable_dict, self.integer_dict = \
            Tokenizer.extract_meta_tokens(self._tokens,
                                          self.integer_consts,
                                          variable_dict=self.variable_dict,
                                          integer_dict=self.integer_dict)
        self._swaps = []

    @classmethod
    def _from_existing(cls, connect_from, connect_to):
        return cls(connect_to.id,
                   connect_to.llvm,
                   connect_to.class_id,
                   variables=connect_from.variable_dict,
                   integers=connect_from.integer_dict)

    def add_connection(self, other):
        self._swaps.append(Snippet._from_existing(self, other))

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
