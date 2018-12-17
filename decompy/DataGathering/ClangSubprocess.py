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
        Compiles the specified C file with Clang, using the specified args.
        Stores this file in the specified location and lists the new file in
        the output file. If this is being used to filter the input file and
        if the C file successfully compiles it will be entered in the filter file
        :param file_in: File with list of C file names to compile
        :param outfile: If the file is successfully compiled, the output
        file is listed in this file
        :param newlocation: location to save LLVM files to
        :param output_type: the type that the file must be compiled to, such as
         "elf'
        :param filter_file: If the file is successfully compiled, the name of
         the C file is listed in this file
        :param args: Arguments for the compiler to use while compiling
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
        Compiles all C files listed in the input file with Clang, using the
        specified args. Stores these files in the specified location and lists
        the new files in the output file. If this is being used to filter the
        input files, the C files that successfully compile will be entered in
        :param input_file: File with list of C file names to compile
        :param output_file: If the file is successfully compiled, the output
        file is listed in this file
        :param newlocation: location to save LLVM files to
        :param out_type: the type that the file must be compiled to, such as
         "elf'
        :param filter_file: If the file is successfully compiled, the name of
         the C file is listed in this file
        :param args: Arguments for the compiler to use while compiling
        :return:
        """

        print(args)
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
        compiles all C files listed in the input file to x86 assembly.
        Writes the name of successful files to output file
        :param input_file: File with list of C file names to compile
        :param output_file: If the file is successfully compiled, the output
        file is listed in this file
        :param newlocation: location to save assembly files to
        :return:
        """
        args = "-S -masm=intel"
        out_type = "-assembly.asm"
        Clang.compile_all(input_file, output_file, newlocation, out_type, args=args)

    @staticmethod
    def to_elf(input_file, output_file, newlocation, filter_file):
        """
        compiles all C files listed in the input file to elf executables.
        Writes the name of successful files to output file. Writes the name of
        successful C files to filter file
        :param input_file: File with list of C file names to compile
        :param output_file: If the file is successfully compiled, the output
        file is listed in this file
        :param newlocation: location to save LLVM files to
        :param filter_file: If the file is successfully compiled, the name of
         the C file is listed in this file
        :return:
        """
        out_type = "-elf.elf"
        Clang.compile_all(input_file, output_file, newlocation, out_type, filter_file)

    @staticmethod
    def to_llvm_opt(input_file, output_file, newlocation, optlevel = ""):
        """
        compiles all C files listed in the input file to optimized LLVM IR, at
        the specified opt level. Writes the name of successful files to output file
        :param input_file: File with list of C file names to compile
        :param output_file: If the file is successfully compiled, the output
        file is listed in this file
        :param newlocation: location to save LLVM files to
        :return:
        """
        args = "-S -emit-llvm " + optlevel
        out_type = "-opt.ll"
        Clang.compile_all(input_file, output_file, newlocation, out_type, args=args)

    @staticmethod
    def to_llvm_unopt(input_file, output_file, newlocation):
        """
        compiles all C files listed in the input file to unoptimized LLVM IR.
        Writes the name of successful files to output file
        :param input_file: File with list of C file names to compile
        :param output_file: If the file is successfully compiled, the output
        file is listed in this file
        :param newlocation: location to save LLVM files to
        :return:
        """
        args = "-O1 -Xclang -disable-llvm-passes -S -emit-llvm"
        out_type = "-unopt.ll"
        Clang.compile_all(input_file, output_file, newlocation, out_type, args=args)

if(__name__ == "__main__"):
    Clang.to_llvm_unopt("/mnt/c/Users/User/CLionProjects/decompy/decompy/tests/test_ClangSubprocess/text.txt", "out.txt", "out")