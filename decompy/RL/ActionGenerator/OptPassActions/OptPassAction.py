from decompy.RL.Action.PassAction import PassAction

import ctypes
import pathlib
import subprocess

libextract_path = pathlib.PurePath.joinpath(pathlib.Path(__file__).resolve().parent, "MakeLLFile.so")
libextract = ctypes.CDLL(str(libextract_path))
libextract.extract_instructions.restype = ctypes.c_char_p


class OptPassAction(PassAction):

    def __init__(self, pass_name):
        super().__init__(pass_name)

    def do_action(self, llvm_str):
        # Creates a .ll file so that it can be passed into opt. The file is populated with llvm_string and is named intermediate_file
        if self.llvm_string is not None and self.intermediate_file is not None:
            PassAction._make_llvm_module_file(self, self.llvm_string, self.intermediate_file)

        # Run the command line command
        subprocess.Popen(self.command_line_command.split())

    def _make_llvm_module_file(self, llvm_string, output_file):
        """
        Used internally to create .ll file
        :param llvm_string:
        :param output_file:
        :return:
        """
        module_charp = ctypes.create_string_buffer(str.encode(llvm_string))
        output_file_charp = ctypes.create_string_buffer(str.encode(output_file))
        libextract.extract_instructions(module_charp, output_file_charp)

if __name__ == "main":
    with open('example.ll') as f:
        llvm_string = f.read()
