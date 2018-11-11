import subprocess
import os
from pathlib import Path

class GenLLVM:
    """

    """

    def __init__(self):
        """

        """
        pass

    @staticmethod
    def _unoptimized(filepath, newlocation):
        """
        Will compile file specified by filename down to optimized llvm using
        the following bash command:
        clang {args} {filename} -S -emit-llvm -O1 -disable-llvm-passes
        :param filename: The file name wo .cpp extension
        :return:
        """

        file_ar = filepath.split("/")
        filename = file_ar[len(file_ar) - 1]
        filename = filename.replace(".c", "")

        command = "clang -Wno-everything " + filepath + " -O1 -Xclang -disable-llvm-passes -S -emit-llvm -o " + \
                  newlocation + filename + "-unopt.ll"

        subprocess.run(command, shell=True, check=True)

    @staticmethod
    def _optimized(filepath, newlocation, opt_level):
        """
        Will compile file specified by filename down to optimized llvm using
        the following bash command:
        clang {args} {filename} -S -emit-llvm
        :param filename:
        :param opt_level: the optimization level for optimized llvm.
        :return:
        """
        file_ar = filepath.split("/")
        filename = file_ar[len(file_ar) - 1]
        filename = filename.replace(".c", "")

        command = "clang -Wno-everything " + filepath + " " + opt_level +\
                  " -S -emit-llvm -o " + newlocation + filename + "-opt.ll"

        subprocess.run(command, shell=True, check=True)

    @staticmethod
    def genLLVM(filepath, newlocation, opt_level=""):
        """
        Creates optimized and unoptmized llvm files for all c files specified in the file
        :param opt_level: the optimization level for optimized llvm. defaults to base line opt level, 0
        :param filepath: file containing the filpath to the txt file that contains the paths to the c files
        :param newlocation: new location for the llvm files. must include trailing slash: "./llvmDir"
        :return:
        """
        file_of_cfiles = open(filepath, 'r')
        newLoc = Path(newlocation)
        if not newLoc.is_dir():
            newLoc.mkdir()

        for cfile in file_of_cfiles:
            cfile = cfile.rstrip()
            GenLLVM._unoptimized(cfile, newlocation)
            GenLLVM._optimized(cfile, newlocation, opt_level)
        file_of_cfiles.close()
