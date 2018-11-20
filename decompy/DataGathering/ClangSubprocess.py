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
    def compile_cfile(file_in, outfile, newlocation, output_type, filter_file, args):
        """

        :param file_in:
        :param output_file: If the file is successfully compiled, the output file
                entered here
        :param newlocation:
        :param output_type:
        :param args:
        :return:
        """
        file_name = Path(file_in).stem
        location_path = Path(newlocation)

        file_out = str(location_path.joinpath(file_name + output_type).resolve())
        command = "clang -Wno-everything " + file_in + " " + args + " -o " +\
                  file_out
        result = subprocess.run(command, shell=True).returncode #, check=True)

        if result == 0:
            outfile.write(file_out + "\n")
            if filter_file:
                filter_file.write(file_in + "\n")

    @staticmethod
    def compile_all(input_file, output_file, newlocation, out_type, filter_file="", args=""):
        """

        :param input_file:
        :param output_file: If the file is successfully compiled, the output file
                entered here
        :param newlocation:
        :param out_type:
        :param args:
        :return:
        """

        file_of_cfiles = open(input_file, 'r')

        location_path = Path(newlocation)

        if not location_path.is_dir():
            location_path.mkdir()

        outpath = Path(output_file)
        if not outpath.is_file():
            outfile = open(output_file, 'w+')
        else:
            outfile = open(output_file, 'a+')

        filteredC = None
        if filter_file:
            filteredC = Path(filter_file)
            if not filteredC.is_file():
                filteredC = open(filter_file, 'w+')
            else:
                filteredC = open(filter_file, 'a+')

        for cfile in file_of_cfiles:
            cfile = cfile.rstrip()
            Clang.compile_cfile(cfile, outfile, newlocation, out_type,
                                filter_file=filteredC, args=args)
        file_of_cfiles.close()

    @staticmethod
    def to_assembly(input_file, output_file, newlocation):
        """
        compiles all C files listed in the directory to assembly
        :param output_file: If the file is successfully compiled, the output file
                entered here
        :param input_file: File to get C file names from
        :param newlocation: location to save C files to
        :return:
        """
        args = "-S -masm=intel"
        out_type = "-assembly.asm"
        Clang.compile_all(input_file, output_file, newlocation, out_type, args=args)

    @staticmethod
    def to_elf(input_file, output_file, newlocation, filter_file):
        """
        compiles all C files listed in the directory to assembly
        :param input_file: File to get C file names from
        :param output_file: If the file is successfully compiled, the output file
                entered here
        :param newlocation: location to save C files to
        :return:
        """
        out_type = "-elf.elf"
        Clang.compile_all(input_file, output_file, newlocation, out_type, filter_file)

    @staticmethod
    def to_llvm_opt(input_file, output_file, newlocation, optlevel = ""):
        """
        compiles all C files listed in the directory to assembly
        :param output_file: If the file is successfully compiled, the output file
                entered here
        :param optlevel:
        :param input_file: File to get C file names from
        :param newlocation: location to save C files to
        :return:
        """
        args = "-S -emit-llvm " + optlevel
        out_type = "-opt.ll"
        Clang.compile_all(input_file, output_file, newlocation, out_type, args)

    @staticmethod
    def to_llvm_unopt(input_file, output_file, newlocation):
        """
        compiles all C files listed in the directory to assembly
        :param output_file: If the file is successfully compiled, the output file
                entered here
        :param input_file: File to get C file names from
        :param newlocation: location to save C files to
        :return:
        """
        args = "-O1 -Xclang -disable-llvm-passes -S -emit-llvm"
        out_type = "-unopt.ll"
        Clang.compile_all(input_file, output_file, newlocation, out_type, args)


if __name__ == "__main__":
    Clang.to_assembly("example.txt", "./assembly/assembly.txt", "./assembly")
    Clang.to_elf("example.txt", "./elf/elf.txt", "./elf", "./compilableC.txt")
    Clang.to_llvm_opt("example.txt", "./llvm_opt/llvm_opt.txt", "./llvm_opt")
    Clang.to_llvm_unopt("example.txt", "./llvm_unopt/llvm_unopt.txt", "./llvm_unopt")