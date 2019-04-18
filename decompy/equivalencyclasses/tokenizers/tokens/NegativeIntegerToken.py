from decompy.equivalencyclasses.tokenizers.tokens.Token import Token


class NegativeIntegerToken(Token):

    def __init__(self):
        Token.__init__(self)
        self._value = None

    def reset(self):
        self._value = None

    def value(self):
        if not self._value:
            raise AttributeError("Cannot resolve an unassigned numeric token")
        return self._value

    def __eq__(self, other):
        if self._value:
            return other == self._value
        if isinstance(other, int):
            self._value = other
            return True
        elif isinstance(other, str) and other[0] == '-':
            for char in other[1:]:
                if char not in "0123456789":
                    return False
            self._value = int(other)
            return True
        elif isinstance(other, int):
            return True
        return False

    def __str__(self):
        return "<Unknown Integer: %s>" % hex(id(self))


if __name__ == "__main__":
    a = IntegerToken()
    b = IntegerToken()

    def result():
        try:
            print("Token value:", Token.resolve(token))
        except AttributeError as e:
            print("Token value: unassigned")

    for token in [a, a, 5, b]:
        result()
        print("Compare token to int 4", token == 4)
        result()
        print("Compare token to int 5", token == 5)
