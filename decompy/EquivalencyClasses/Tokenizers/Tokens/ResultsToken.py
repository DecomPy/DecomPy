from decompy.EquivalencyClasses.Tokenizers.Tokens.Token import Token

from functools import reduce

class ResultsToken(Token):
    def __init__(self, operation_list):
        Token.__init__(self)
        self._operator = operation_list[0]
        self._operands = operation_list[1:]

    def reset(self):
        pass

    def value(self):
        operands_values = []
        for token in self._operands:
            try:
                operands_values.append(Token.resolve(token))
            except AttributeError as _:
                raise AttributeError("Result Variable cannot be resolved before operands")
        return reduce(self._operator, operands_values)

    def __eq__(self, other):
        return id(self) == id(other)

    def __str__(self):
        return "<Result Variable: %s (%s, %s)>" % (hex(id(self)), str(self._operator), str(self._operands))


if __name__ == "__main__":
    from decompy.EquivalencyClasses.Tokenizers.Tokens.PositiveIntegerToken import PositiveIntegerToken

    def result(token):
        try:
            print("Token value:", Token.resolve(token))
        except AttributeError as _:
            print("Token value: unassigned")

    v1 = PositiveIntegerToken()
    v2 = PositiveIntegerToken()

    r1 = ResultsToken([lambda x1, x2: x1 * (-1 * x2), v1, v2])
    r2 = ResultsToken([lambda x1, x2: abs(x1), r1, 0])

    v1 == "34"
    v2 == "12"

    result(r1)
    result(r2)

