from decompy.RL.Action.Action import Action
from decompy.RL.ActionGenerator.OptimizationLister import OptimizationLister

import ctypes
import pathlib
import subprocess

libextract_path = pathlib.PurePath.joinpath(pathlib.Path(__file__).resolve().parent, "MakeLLFile.so")
libextract = ctypes.CDLL(str(libextract_path))
libextract.extract_instructions.restype = ctypes.c_char_p


class PassAction(Action):
    """
    Data Structure for a LLVM Optimization Pass Action.
    """

    def __init__(self, pass_name, command_line_command, llvm_module_string=None, intermediate_file=None, output_file=None):
        """
        :param pass_name: the pass name
        :type: str
        :param command_line_command: what is run on the command line
        :type: Action
        :param llvm_module_string: None by default. Set to LLVM string if needed
        :type: String
        :param intermediate_file: None by default. Set to intermediate file name if needed
        :type: String
        :param output_file: None by default. Set to output file name if needed
        :type: String
        """
        super(PassAction, self).__init__()
        self.pass_name = pass_name
        self.command_line_command = command_line_command
        self.llvm_string = llvm_module_string
        self.intermediate_file = intermediate_file
        self.output_file = output_file

    def do_action(self):
        """
        an action performed based off an LLVM pass.
        TODO: implementer add more info
        :return:
        """

        # Creates a .ll file so that it can be passed into opt. The file is populated with llvm_string and is named intermediate_file
        if self.llvm_string is not None and self.intermediate_file is not None:
            PassAction._make_llvm_module_file(self, self.llvm_string, self.intermediate_file)

        # Run the command line command
        subprocess.Popen(self.command_line_command.split())

        pass

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


# test to see it if runs
if __name__ == "__main__":
    with open('example.ll') as f:
        llvm_string = f.read()

    pa_list = OptimizationLister.list_optimizations_actions(llvm_string)

    for pa in pa_list:
        pa.do_action()

