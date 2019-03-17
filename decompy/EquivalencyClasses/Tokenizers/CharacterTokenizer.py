#from decompy.EquivalencyClasses.Snippet import Snippet
import os
import subprocess

class CharacterTokenizer:

    @staticmethod
    def tokenize(llvm):
        """
        Takes a snipppet and returns a tuple of string tokens of it's LLVM ASM IR
        :param snippet: Snippet
        :return: tuple of string tokens
        """

        return tuple(llvm.replace(',', ' ').split())

    @staticmethod
    def tokenize_ir_file(llvm):
        """
        Takes in a LLVM module file name as well as the location of ExtractInstructions.out relative to where this method is being called to tokenize LLVM
        modules
        :param file_name: name of LLVM IR module file, relative to where this is being called
        :param sh_location: filepath of ExtractInstruction.sh relative to where this is being called
        :return:
        """

        subprocess.run(args=['./' + sh_location, file_name])

        with open('output') as o:
            tokens = o.read().replace(',', ' ').split()

        return tuple(tokens)


if __name__ == "__main__":
    #snippet = Snippet(0, "%1 = alloca i32, align 4\n%2 = alloca i32, align 4", 0)
    #print(CharacterTokenizer.tokenize(snippet))

    #When being called from Decompy directory
    CharacterTokenizer.tokenize_ir_file("decompy/EquivalencyClasses/Tokenizers/example.ll", "decompy/EquivalencyClasses/Tokenizers/RunMeInThisDirectory.sh")
