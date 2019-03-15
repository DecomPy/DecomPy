class CharacterTokenizer:

    @staticmethod
    def tokenize(snippet):
        """
        Takes a snipppet and returns a tuple of string tokens of it's LLVM ASM IR
        :param snippet: Snippet
        :return: tuple of string tokens
        """

        writeFile = open("input", 'w')
        writeFile.write(snippet.llvm)
        writeFile.close()

        return tuple(snippet)


if __name__ == "__main__":
    print("hi")
