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

        filename.replace(".c", "")
        command = "clang " + filename + " -O1 -Xclang -disable-llvm-passes -S -emit-llvm -o " + filename + "-unopt.ll"
        print(command)
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
        filename.replace(".c", "")
        command = "clang " + filename + " -S -emit-llvm -o " + filename + "-opt.ll"
        subprocess.run(command, shell=True)

    @staticmethod
    def genLLVM(filePath):
        file_of_cfiles = open(filePath, 'r')
        for cfile in file:
            GenLLVM.unoptimized(cfile, "")
            GenLLVM.optimized(cfile, "")