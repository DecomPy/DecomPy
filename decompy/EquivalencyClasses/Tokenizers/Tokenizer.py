from decompy.EquivalencyClasses.Tokenizers.Tokens.VariableToken import VariableToken
from decompy.EquivalencyClasses.Tokenizers.Tokens.IntegerToken import IntegerToken

import ctypes
import pathlib
import re

libextract_path = pathlib.PurePath.joinpath(pathlib.Path(__file__).resolve().parent, "libExtractInstructions.so")
libextract = ctypes.CDLL(str(libextract_path))
libextract.extract_instructions.restype = ctypes.c_char_p


class Tokenizer:

    @staticmethod
    def _wrap_extract_instructions(module_string):
        module_charp = ctypes.create_string_buffer(str.encode(module_string))
        extract = libextract.extract_instructions(module_charp)
        return extract.decode("UTF-8")

    @staticmethod
    def extract_meta_tokens(tokens_tuple, integers=(), variable_dict=None, integer_dict=None):
        if variable_dict is None:
            variable_dict = {}
        if integer_dict is None:
            integer_dict = {}

        tokens = list(tokens_tuple)

        for i in range(len(tokens)):
            if len(tokens[i]) > 0 and tokens[i][0] == "%":
                if tokens[i] not in variable_dict:
                    variable_dict[tokens[i]] = VariableToken()
                tokens[i] = variable_dict[tokens[i]]

            if tokens[i] in integers:
                if tokens[i] not in integer_dict:
                    integer_dict[tokens[i]] = IntegerToken()
                tokens[i] = integer_dict[tokens[i]]

        return tuple(tokens), variable_dict, integer_dict

    @staticmethod
    def tokenize(data, is_snippet):
        """
        Takes in llvm and extracts tokens from it
        :param data: Snippet
        :param is_snippet: True if it is a Snippet (and will be treated only as a string) or a Module (and will be converted to LLVM for instruction extraction)
        :return: tuple of string tokens
        """

        # Extract LLVM ASM IR from handwritten or otherwise generated snippets
        if is_snippet and isinstance(data, str):
            instruction_str = data
        # Extract instructions from decompiled Modules or Functions
        elif isinstance(data, str):
            instruction_str = Tokenizer._wrap_extract_instructions(data)
        # Didn't get appropriate data
        else:
            return False

        # Does the actual tokenizing
        token_list = re.split('(\s|,)', instruction_str)

        # Get rid of spaces
        token_list = [token for token in token_list if token not in ['', ' ']]

        return tuple(token_list)


if __name__ == "__main__":
    import pathlib

    with open(str(pathlib.PurePath(__file__).parent) + "/example.ll") as f:
        m = f.read()

    result = Tokenizer.tokenize(m, False)
    meta, _, _ = Tokenizer.extract_meta_tokens(result)

    print(result)

    for token_stream in [result, meta]:
        for token in token_stream:
            print("(%s)" % str(token), end=" ")
        print("*"*100)
