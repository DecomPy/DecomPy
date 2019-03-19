from decompy.EquivalencyClasses.Snippet import Snippet
from decompy.EquivalencyClasses.Tokenizers.Tokens.VariableToken import VariableToken
from decompy.EquivalencyClasses.Tokenizers.Tokens.IntegerToken import IntegerToken

import ctypes
import pathlib

libextract_path = pathlib.PurePath.joinpath(pathlib.Path(__file__).resolve().parent, "libExtractInstructions.so")
print(libextract_path)
libextract = ctypes.CDLL(str(libextract_path))
libextract.extract_instructions.restype=ctypes.c_char_p


class Tokenizer:

    @staticmethod
    def _wrap_extract_instructions(module_string):
        module_charp = ctypes.create_string_buffer(str.encode(module_string))
        extract = libextract.extract_instructions(module_charp)
        return extract.decode("UTF-8")

    @staticmethod
    def extract_meta_tokens(tokens_tuple, integers=()):
        variable_dict = {}
        integer_dict = {}

        tokens = list(tokens_tuple)

        for i in range(len(tokens)):
            if tokens[i][0] == "%":
                if tokens[i] not in variable_dict:
                    variable_dict[tokens[i]] = VariableToken()
                tokens[i] = variable_dict[tokens[i]]

            if tokens[i] in integers:
                if tokens[i] not in integer_dict:
                    integer_dict[tokens[i]] = IntegerToken()
                tokens[i] = integer_dict[tokens[i]]

        return tuple(tokens)


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
            instruction_str = Tokenizer._wrap_extract_instructions(data)
        # Extract LLVM ASM IR from handwritten or otherwise generated snippets
        elif type(data) is Snippet:
            instruction_str = data.llvm
        # Didn't get appropriate data
        else:
            return False

        # Does the actual tokenizing
        instruction_str = instruction_str.split()
        token_list = []
        for token in instruction_str:
            if ',' in token:
                token_list.append(token.replace(',', ""))
                token_list.append(',')
            else:
                token_list.append(token)

        flat_token_list = []

        # Flatten list
        for i in token_list:
            if type(i) is list:
                for j in i:
                    flat_token_list.append(j)
            else:
                flat_token_list.append(i)

        return tuple(flat_token_list)


if __name__ == "__main__":
    s = Snippet(0, "%1 = alloca i32, align 4\n%2 = alloca i32, align 4", 0)
    print(Tokenizer.tokenize(s, True))

    with open("example.ll") as f:
        m = f.read()

    result = Tokenizer.tokenize(m, False)
    meta = Tokenizer.extract_meta_tokens(result)
    print(result, meta, end="\n")

