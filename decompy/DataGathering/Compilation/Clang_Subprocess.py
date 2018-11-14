import subprocess


class ClangSubprocess:
    """
    Class to define functions for calling the Clang compiler
    """

    def __init__(self):
        """

        """
        pass

    @staticmethod
    def compile(self, file_in, file_out, args):
        command = "clang -Wno-everything " + file_in + " " + args + " -o " +\
                  file_out
        subprocess.run(command, shell=True, check=True)
