from abc import ABC, abstractmethod


class Token(ABC):
    def __init__(self):
        pass

    @abstractmethod
    def value(self):
        pass

    @classmethod
    def resolve(cls, test):
        if isinstance(test, cls):
            return test.value()
        return test
