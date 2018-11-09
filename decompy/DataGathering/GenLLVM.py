import subprocess
import os

class GenLLVM:
    """

    """

    def __init__(self):
        """

        """
        pass

    @staticmethod
    def _unoptimized(filepath, bashargs, newlocation):
        """
        Will compile file specified by filename down to optimized llvm using
        the following bash command:
        clang {args} {filename} -S -emit-llvm -O1 -disable-llvm-passes
        :param bashargs: The args needed to
        :param filename: The file name wo .cpp extension
        :return:
        """

        file_ar = filepath.split("/")
        filename = file_ar[len(file_ar) - 1]
        filename = filename.replace(".c", "")

        command = "clang " + bashargs + " -Wno-everything " + filepath + " -O1 -Xclang -disable-llvm-passes -S -emit-llvm -o " + newlocation + filename + "-unopt.ll"

        subprocess.run(command, shell=True, check=True)

    @staticmethod
    def _optimized(filepath, bashargs, newlocation):
        """
        Will compile file specified by filename down to optimized llvm using
        the following bash command:
        clang {args} {filename} -S -emit-llvm
        :param bashargs:
        :param filename:
        :return:
        """
        file_ar = filepath.split("/")
        filename = file_ar[len(file_ar) - 1]
        filename = filename.replace(".c", "")

        command = "clang " + bashargs + " -Wno-everything " + filepath + " -S -emit-llvm -o " + newlocation + filename + "-opt.ll"

        subprocess.run(command, shell=True, check=True)

    @staticmethod
    def genLLVM(filepath, newlocation, bashargs=""):
        """
        Creates optimized and unoptmized llvm files for all c files specified in the file
        :param filepath: file containing the filpath to the txt file that contains the paths to the c files
        :param newlocation: new location for the llvm files. must include trailing slash: "./llvmDir"
        :param bashargs: any arguments required to compile the c files.
        :return:
        """
        file_of_cfiles = open(filepath, 'r')
        if not os.path.isdir(newlocation):
            os.makedirs(newlocation)

        for cfile in file_of_cfiles:
            cfile = cfile.rstrip()
            GenLLVM._unoptimized(cfile, bashargs, newlocation)
            GenLLVM._optimized(cfile, bashargs, newlocation)
        file_of_cfiles.close()

# GenLLVM.genLLVM("./tests_GenLLVM/test-input.txt", "./tests_GenLLVM/llvmDir/")
