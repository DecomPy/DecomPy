from abc import ABC, abstractmethod


class Token(ABC):
    __all_tokens = []

    def __init__(self):
        Token.__all_tokens.append(self)

    @abstractmethod
    def reset(self):
        pass

    @abstractmethod
    def value(self):
        pass

    @staticmethod
    def reset_all():
        for token in Token.__all_tokens:
            token.reset()
            print("RESET", token)

    @classmethod
    def resolve(cls, test):
        if isinstance(test, cls):
            return test.value()
        return test
