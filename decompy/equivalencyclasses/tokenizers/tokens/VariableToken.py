from decompy.equivalencyclasses.tokenizers.tokens.Token import Token


class VariableToken(Token):
    def __init__(self):
        Token.__init__(self)
        self._value = None

    def reset(self):
        self._value = None

    def value(self):
        if not self._value:
            raise AttributeError("Cannot resolve an unassigned variable token")
        return self._value

    def __eq__(self, other):
        if self._value:
            return other == self._value
        elif isinstance(other, str) and other[0] == "%":
            self._value = other
            return True
        return False

    def __hash__(self):
        """
        This hash matches this EXACT token object.
        Any other token is different since they can
        possibly take on different values. This is
        used by the Tokenizer when looking for
        ResultTokens.
        :return: the id of this token
        """
        return id(self)

    def __str__(self):
        return "<Unknown Variable: %s>" % hex(id(self))


if __name__ == "__main__":
    a = VariableToken()
    b = VariableToken()

    def result():
        try:
            print("Token value:", Token.resolve(token))
        except AttributeError as e:
            print("Token value: unassigned")

    for token in [a, a, 5, b]:
        result()
        print("Compare token to variable %6", token == "%6")
        result()
        print("Compare token to int 4", token == 4)
        result()
        print("Compare token to variable %5", token == "%5")

