from decompy.RL.Action.PassAction import PassAction
from decompy.EquivalencyClasses.Tokenizers.Tokenizer import Tokenizer

import ctypes
import pathlib
import subprocess

libextract_path = pathlib.PurePath.joinpath(pathlib.Path(__file__).resolve().parent, "MakeLLFile.so")
libextract = ctypes.CDLL(str(libextract_path))
libextract.extract_instructions.restype = ctypes.c_char_p


class OptPassAction(PassAction):

    command_line_command = None

    def __init__(self, pass_name):
        super().__init__(pass_name)

    def do_action(self, llvm_str):
        # Creates a .ll file so that it can be passed into opt. The file is populated with llvm_string and is named intermediate_file
        OptPassAction._make_llvm_module_file(self, llvm_str)

        # Run the command line command
        subprocess.Popen(self.command_line_command.split())

        # Retokenize the module
        with open('output.ll') as g:
            return g.read()

    def _make_llvm_module_file(self, llvm_str):
        """
        Used internally to create .ll file
        :param llvm_string:
        :param output_file:
        :return:
        """
        module_charp = ctypes.create_string_buffer(str.encode(llvm_str))
        output_file_charp = ctypes.create_string_buffer(str.encode("module.ll"))
        libextract.extract_instructions(module_charp, output_file_charp)
        libextract.extract_instructions(module_charp)

    def __str__(self):
        return "pass_name: " + self.pass_name + "\ncmd: " + self.command_line_command


if __name__ == "__main__":
    with open('example.ll') as f:
        llvm_string = f.read()

    opt_pass_action = OptPassAction("test")
    opt_pass_action.do_action(llvm_string)
