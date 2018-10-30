import subprocess

class GenLLVM:
    """

    """

    def __init__(self):
        """

        """
        pass

    @staticmethod
    def unoptimized(filename, bashargs):
        """
        Will compile file specified by filename down to optimized llvm using
        the following bash command:
        clang {args} {filename} -S -emit-llvm -O1 -disable-llvm-passes
        :param bashargs: The args needed to
        :param filename: The file name wo .cpp extension
        :return:
        """

        command = "clang -O1 -disable-llvm-passes -Xclang -cc1 " + filename + ".c -S -emit-llvm -o " + filename + "-unopt.ll"
        subprocess.run(command, shell=True)

    @staticmethod
    def optimized(filename, bashargs):
        """
        Will compile file specified by filename down to optimized llvm using
        the following bash command:
        clang {args} {filename} -S -emit-llvm
        :param bashargs:
        :param filename:
        :return:
        """
        command = "clang " + filename + "-unopt.ll -opt -S -emit-llvm -o " + filename + "-opt.ll"
        subprocess.run(command, shell=True)


GenLLVM.unoptimized("example", "")
GenLLVM.optimized("example", "")
