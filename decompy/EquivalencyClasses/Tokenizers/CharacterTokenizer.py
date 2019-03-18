from decompy.EquivalencyClasses.Snippet import Snippet
import re

import ctypes
import pathlib

libextract_path = pathlib.PurePath.joinpath(pathlib.Path(__file__).resolve().parent, "libExtractInstructions.so")
print(libextract_path)
libextract = ctypes.CDLL(str(libextract_path))
libextract.extract_instructions.restype=ctypes.c_char_p


class CharacterTokenizer:

    @staticmethod
    def _wrap_extract_instructions(module_string):
        module_charp = ctypes.create_string_buffer(str.encode(module_string))
        extract = libextract.extract_instructions(module_charp)
        return extract.decode("UTF-8")

    @staticmethod
    def tokenize(data, is_snippet):
        """
        Takes in llvm and extracts tokens from it
        :param data: Snippet
        :param is_snippet: True if it is a Snippet (and will be treated only as a string) or a Module (and will be converted to LLVM for instruction extraction)
        :return: tuple of string tokens
        """

        # Extract instructions from decompiled Modules or Functions
        if not is_snippet:
            instruction_str = CharacterTokenizer._wrap_extract_instructions(data)
        # Extract LLVM ASM IR from handwritten or otherwise generated snippets
        elif type(data) is Snippet:
            instruction_str = data.llvm
        # Didn't get appropriate data
        else:
            return False

        # Does the actual tokenizing
        token_list = re.split('(\s)', instruction_str)

        # Get rid of spaces
        token_list = [token for token in token_list if token != ' ']


        return tuple(token_list)


if __name__ == "__main__":
    s = Snippet(0, "%1 = alloca i32, align 4\n%2 = alloca i32, align 4", 0)
    print(CharacterTokenizer.tokenize(s, True))

    # with open("example.ll") as f:
    #    m = f.read()

    # print(CharacterTokenizer.tokenize(m, False))
