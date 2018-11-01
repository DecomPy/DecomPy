import subprocess

class GenLLVM:
    """

    """

    def __init__(self):
        """

        """
        pass

    @staticmethod
    def unoptimized(filename, bashargs, newlocation):
        """
        Will compile file specified by filename down to optimized llvm using
        the following bash command:
        clang {args} {filename} -S -emit-llvm -O1 -disable-llvm-passes
        :param bashargs: The args needed to
        :param filename: The file name wo .cpp extension
        :return:
        """

        filename.replace(".c", "")
        command = "clang " + filename + " -O1 -Xclang -disable-llvm-passes -S -emit-llvm -o " + newlocation + filename + "-unopt.ll"
        print(command)
        subprocess.run(command, shell=True)

    @staticmethod
    def optimized(filepath, bashargs, newlocation):
        """
        Will compile file specified by filename down to optimized llvm using
        the following bash command:
        clang {args} {filename} -S -emit-llvm
        :param bashargs:
        :param filename:
        :return:
        """
        file_ar = filepath.split("/")
        filename = file_ar[file_ar.size()-1]
        filename.replace(".c", "")
        command = "clang " + filename + " -S -emit-llvm -o " + newlocation + filename + "-opt.ll"
        subprocess.run(command, shell=True)

    @staticmethod
    def genLLVM(filepath):
        file_of_cfiles = open(filepath, 'r')
        for cfile in file_of_cfiles:
            GenLLVM.unoptimized(cfile, "", "./")
            GenLLVM.optimized(cfile, "", "./")
