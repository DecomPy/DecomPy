import subprocess
from pathlib import Path


class Clang:
    """
    Class to define functions for calling the Clang compiler
    """

    def __init__(self):
        """

        """
        pass

    @staticmethod
    def compile_cfile(file_in, newlocation, output_type, args):
        location_path = Path(newlocation)

        if not location_path.is_dir():
            location_path.mkdir()

        file_name = Path(file_in).stem
        location_path = Path(newlocation)

        file_out = str(location_path.joinpath(file_name + output_type).resolve())
        command = "clang -Wno-everything " + file_in + " " + args + " -o " +\
                  file_out
        subprocess.run(command, shell=True, check=True)

    @staticmethod
    def compile_all(input_file, newlocation, out_type, args=""):
        file_of_cfiles = open(input_file, 'r')

        for cfile in file_of_cfiles:
            cfile = cfile.rstrip()
            Clang.compile_cfile(cfile, newlocation, out_type, args)
        file_of_cfiles.close()

    @staticmethod
    def to_assembly(input_file, newlocation):
        """
        compiles all C files listed in the directory to assembly
        :param input_file: File to get C file names from
        :param newlocation: location to save C files to
        :return:
        """
        args = "-S -masm=intel"
        out_type = "-assembly.asm"
        Clang.compile_all(input_file, newlocation, out_type, args)

    @staticmethod
    def to_elf(input_file, newlocation):
        """
        compiles all C files listed in the directory to assembly
        :param input_file: File to get C file names from
        :param newlocation: location to save C files to
        :return:
        """
        out_type = "-elf.elf"
        Clang.compile_all(input_file, newlocation, out_type)

    @staticmethod
    def to_llvm_opt(input_file, newlocation, optlevel = ""):
        """
        compiles all C files listed in the directory to assembly
        :param optlevel:
        :param input_file: File to get C file names from
        :param newlocation: location to save C files to
        :return:
        """
        args = "-S -emit-llvm " + optlevel
        out_type = "-opt.ll"
        Clang.compile_all(input_file, newlocation, out_type, args)

    @staticmethod
    def to_llvm_unopt(input_file, newlocation):
        """
        compiles all C files listed in the directory to assembly
        :param input_file: File to get C file names from
        :param newlocation: location to save C files to
        :return:
        """
        args = "-O1 -Xclang -disable-llvm-passes -S -emit-llvm"
        out_type = "-unopt.ll"
        Clang.compile_all(input_file, newlocation, out_type, args)


if __name__ == "__main__":
    Clang.to_assembly("example.txt", "./assembly")
    Clang.to_elf("example.txt", "./elf")
    Clang.to_llvm_opt("example.txt", "./llvm_opt")
    Clang.to_llvm_unopt("example.txt", "./llvm_unopt")