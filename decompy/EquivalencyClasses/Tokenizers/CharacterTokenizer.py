from decompy.EquivalencyClasses.Snippet import Snippet

class CharacterTokenizer:

    @staticmethod
    def tokenize(llvm):
        """
        Takes a snipppet and returns a tuple of string tokens of it's LLVM ASM IR
        :param snippet: Snippet
        :return: tuple of string tokens
        """

        return tuple(llvm)


if __name__ == "__main__":
    snippet = Snippet(0, "%1 = alloca i32, align 4\n%2 = alloca i32, align 4", 0)
    print(CharacterTokenizer.tokenize(snippet.llvm))
