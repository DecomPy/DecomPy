import subprocess


class FilterCompile:
    """
    Compiles a File returning true or false whether the file could be compiled.
    """

    def __init__(self):
        """
        init

        Initializes an object to compile a string of arguments
        """

    @staticmethod
    def compile_file(file, commands="clang -fsyntax-only"):
        """
        compiles the file with given arguments or default clang.
        :param file: the file to compile.
        :type: string
        :param commands: the commands to run when compiling.
        :type: array or tuple
        :return: bool
        """

        # need a file
        if file is None:
            print("No file found")
            return False

        # do subprocess, returns 0 for success
        status = subprocess.call(commands + " " + file, shell=True)

        # return true only if status is 0
        return True if status == 0 else False


if __name__ == '__main__':
    f = FilterCompile()
    f.compile_file("decompy/tests/test_GenLLVM/cDir/example.c")
