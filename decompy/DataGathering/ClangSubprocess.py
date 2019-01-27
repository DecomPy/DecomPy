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
        """
        Compiles the specified C file with Clang, using the specified args.
        Stores this file in the specified location and lists the new file in
        the output file. If this is being used to filter the input file and
        if the C file successfully compiles it will be entered in the filter file
        :param file_in: File to compile
        :param newlocation: location to save LLVM files to
        :param output_type: the type that the file must be compiled to, such as
            "elf'
        :param args: Arguments for the compiler to use while compiling
        """

        file_name = Path(file_in).stem
        location_path = Path(newlocation)

        file_out = str(location_path.joinpath(file_name + output_type).resolve())
        command = "clang -Wno-everything " + file_in + " " + args + " -o " + file_out

        result = subprocess.run(command, shell=True).returncode  # , check=True)

        if result == 0:
            return newlocation + "/" + file_name + output_type

    @staticmethod
    def compile_all(file_path, newlocation, out_type, args=""):
        """
        Compiles all C files listed in the input file with Clang, using the
        specified args. Stores these files in the specified location and lists
        the new files in the output file. If this is being used to filter the
        input files, the C files that successfully compile will be entered in.
        :param file_path: File with list of C file names to compile
        :param newlocation: location to save LLVM files to
        :param out_type: the type that the file must be compiled to, such as "elf"
        :param args: Arguments for the compiler to use while compiling
        """

        # check if file path exists
        input_file_path = Path(file_path)

        # check if my file exists
        if input_file_path.exists():

            # creates new directory if one does not exist.
            location_path = Path(newlocation)
            if not location_path.is_dir():
                location_path.mkdir()

            # then compile it and return the data
            return Clang.compile_cfile(file_path, newlocation, out_type, args=args)
        else:
            print("File not Found", file_path)

    @staticmethod
    def to_assembly(file_path, newlocation):
        """
        compiles all C files listed in the input file to x86 assembly.
        Writes the name of successful files to output file.
        :param file_path: file path to compile
        :param newlocation: location to save assembly files to
        :return: the file location which llvm_unopt was saved to.
        :rtype: str or None
        """
        args = "-S -masm=intel"
        out_type = "-assembly.asm"
        return Clang.compile_all(file_path, newlocation, out_type, args=args)

    @staticmethod
    def to_elf(file_path, newlocation):
        """
        compiles all C files listed in the input file to elf executables.
        Writes the name of successful files to output file. Writes the name of
        successful C files to filter file.
        :param file_path: file path to compile
        :param newlocation: location to save LLVM files to
        """
        out_type = "-elf.elf"
        return Clang.compile_all(file_path, newlocation, out_type)

    @staticmethod
    def to_llvm_opt(file_path, newlocation, optlevel=""):
        """
        compiles all C files listed in the input file to optimized LLVM IR, at
        the specified opt level. Writes the name of successful files to output file
        :param file_path: File with list of C file names to compile
        :param newlocation: location to save LLVM files to
        :return: the file location which llvm_unopt was saved to.
        :rtype: str or None
        """
        args = "-S -emit-llvm " + optlevel
        out_type = "-opt.ll"
        return Clang.compile_all(file_path, newlocation, out_type, args=args)

    @staticmethod
    def to_llvm_unopt(file_path, newlocation):
        """
        compiles all C files listed in the input file to unoptimized LLVM IR.
        Writes the name of successful files to output file.
        :param file_path: File with list of C file names to compile
        :param newlocation: location to save LLVM files to
        :return: the file location which llvm_unopt was saved to.
        :rtype: str or None
        """
        args = "-O1 -Xclang -disable-llvm-passes -S -emit-llvm"
        out_type = "-unopt.ll"
        return Clang.compile_all(file_path, newlocation, out_type, args=args)

    @staticmethod
    def to_object_file(file_path, newlocation):
        """
        Compiles all C files listed in the input file to clang.

        :param file_path: File with list of C file names to compile
        :param newlocation: location to save Object files to
        :return: the file location which llvm_unopt was saved to.
        :rtype: str or None
        """
        args = "-c "
        out_type = ".o"
        return Clang.compile_all(file_path, newlocation, out_type, args=args)
