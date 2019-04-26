import multiprocessing
import time
from multiprocessing import Queue

from decompy.EquivalencyClasses.Tokenizers.Tokens.NegativeIntegerToken import NegativeIntegerToken
from decompy.EquivalencyClasses.Tokenizers.Tokens.SignedIntegerToken import SignedIntegerToken
from decompy.EquivalencyClasses.Tokenizers.Tokens.VariableToken import VariableToken
from decompy.EquivalencyClasses.Tokenizers.Tokens.PositiveIntegerToken import PositiveIntegerToken
from decompy.EquivalencyClasses.Tokenizers.Tokens.Token import Token

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
    def extract_meta_tokens(tokens_tuple,
                            positive_integers=(), negative_integers=(), signed_integers=(),
                            positive_integer_dict=None, negative_integer_dict=None, signed_integer_dict=None,
                            results_dict=None, variable_dict=None):
        if variable_dict is None:
            variable_dict = {}
        if results_dict is None:
            results_dict = {}
        if positive_integer_dict is None:
            positive_integer_dict = {}
        if negative_integer_dict is None:
            negative_integer_dict = {}
        if signed_integer_dict is None:
            signed_integer_dict = {}

        tokens = list(tokens_tuple)

        for i in range(len(tokens)):
            if len(tokens[i]) > 0 and tokens[i][0] == "%":
                if tokens[i] not in variable_dict:
                    variable_dict[tokens[i]] = VariableToken()
                tokens[i] = variable_dict[tokens[i]]

            elif tokens[i] in results_dict:
                tokens[i] = results_dict[tokens[i]]

            elif tokens[i] in positive_integers:
                if tokens[i] not in positive_integer_dict:
                    positive_integer_dict[tokens[i]] = PositiveIntegerToken()
                tokens[i] = positive_integer_dict[tokens[i]]

            elif tokens[i] in negative_integers:
                if tokens[i] not in negative_integer_dict:
                    negative_integer_dict[tokens[i]] = NegativeIntegerToken()
                tokens[i] = negative_integer_dict[tokens[i]]

            elif tokens[i] in signed_integers:
                if tokens[i] not in signed_integer_dict:
                    signed_integer_dict[tokens[i]] = SignedIntegerToken()
                tokens[i] = signed_integer_dict[tokens[i]]
        return tuple(tokens), variable_dict, positive_integer_dict, negative_integer_dict, signed_integer_dict

    @staticmethod
    def _safe_wrap_extract_instructions(data, out_q):
        """
        Used for running a C++ function that can segfault very easily. if out_q == 0, it probably segfaulted, otherwise not
        :param data: llvm asm ir string
        :param out_q: pointer (reference?) to multiprocess-safe queue that will contain the return value of the C++ function
        :return:
        """
        instruction_str = Tokenizer._wrap_extract_instructions(data)
        out_q.put(instruction_str)

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
            # instruction_str = Tokenizer._wrap_extract_instructions(data)
            out_q = Queue()
            p = multiprocessing.Process(
                target=Tokenizer._safe_wrap_extract_instructions,
                args=(data, out_q)
            )
            p.start()
            p.join()
            p.terminate()
            if out_q.qsize() > 0:
                instruction_str = out_q.get()
            else:
                print("Invalid Module.")
                return tuple()
        # Didn't get appropriate data
        else:
            return False

        # Does the actual tokenizing
        token_list = re.split('(\s|,)', instruction_str)

        # Get rid of spaces
        token_list = [token for token in token_list if token not in ['', ' ']]

        return tuple(token_list)

    @staticmethod
    def reassemble(tokens):
        rendered_llvm = ""
        for i in range(len(tokens)):
            try:
                rendered_llvm += str(Token.resolve(tokens[i]))
            except AttributeError as e:
                raise ValueError(e, "Cannot resolve token: %s in: %s" % (tokens[i], str(tokens)))
            if tokens[i] != "\n" and i != (len(tokens) - 1) and tokens[i + 1] != ",":
                rendered_llvm += " "
        return rendered_llvm


if __name__ == "__main__":
    import pathlib

    with open(str(pathlib.PurePath(__file__).parent) + "/example.ll") as f:
        m = f.read()

    result = Tokenizer.tokenize(m, False)
    meta, _, _, _, _ = Tokenizer.extract_meta_tokens(result)

    print("*" * 100)
    for token_stream in [result, meta]:
        for token in token_stream:
            print("(%s)" % str(token), end=" ")
        print("*" * 100)
