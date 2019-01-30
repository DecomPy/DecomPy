import subprocess
from pathlib import Path


class Clang:
    """
    Class to define functions for calling the Clang compiler
    """

    @staticmethod
    def compile_cfile(file_in, outfile, newlocation, output_type, filter_file, args):
        """
        Compiles the specified C file with Clang.
        :param file_in: C file to compile
        :param outfile: If the file is successfully compiled, the output file is listed in this file
        :param newlocation: location to save the compiled file to
        :param output_type: the type that the file must be compiled to
        :param filter_file: If the file is successfully compiled, the name of the C file is listed in this file
        :param args: Arguments for the compiler to use while compiling
        """

        file_name = Path(file_in).stem
        location_path = Path(newlocation)

        file_out = str(location_path.joinpath(file_name + output_type).resolve())
        command = "clang -Wno-everything " + file_in + " " + args + " -o " + file_out
        proc = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, encoding="UTF8", shell=True)
        code = proc.returncode
        out = proc.stdout
        err = proc.stderr

        print(err, file_in)
        if code == 0:
            outfile.write(file_out + "\n")
            if filter_file:
                filter_file.write(file_in + "\n")
        elif "no such file or directory" in err:
            raise FileDoesNotExistException
        elif "no input files" in err:
            raise NoInputFileException

    @staticmethod
    def compile_all(input_file, output_file, newlocation, out_type, filter_file="", args=""):
        """
        Compiles all C files listed in the input file with Clang.
        :param input_file: File with list of C file names to compile
        :param output_file: If the file is successfully compiled, the output file is listed in this file
        :param newlocation: location to save compiled files to
        :param out_type: the type that the file must be compiled to
        :param filter_file: If the file is successfully compiled, the name of the C file is listed in this file
        :param args: Arguments for the compiler to use while compiling
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
        Compiles all C files listed in the input file to x86 assembly.
        :param input_file: File with list of C file names to compile
        :param output_file: If the file is successfully compiled, the output file is listed in this file
        :param newlocation: location to save assembly files to
        """
        args = "-S -masm=intel --target=i386"
        out_type = "-assembly.asm"
        Clang.compile_all(input_file, output_file, newlocation, out_type, args=args)

    @staticmethod
    def to_elf(input_file, output_file, newlocation, filter_file):
        """
        Compiles all C files listed in the input file to elf executables.
        :param input_file: File with list of C file names to compile
        :param output_file: If the file is successfully compiled, the output file is listed in this file
        :param newlocation: location to save LLVM files to
        :param filter_file: If the file is successfully compiled, the name of the C file is listed in this file
        """
        args = " --target=i386-elf"
        out_type = "-elf.elf"
        Clang.compile_all(input_file, output_file, newlocation, out_type, filter_file)

    @staticmethod
    def to_llvm_opt(input_file, output_file, newlocation, optlevel = "-o2"):
        """
        Compiles all C files listed in the input file to optimized LLVM IR
        :param input_file: File with list of C file names to compile
        :param output_file: If the file is successfully compiled, the output file is listed in this file
        :param newlocation: location to save LLVM files to
        """
        args = "-S -emit-llvm " + optlevel
        out_type = "-opt.ll"
        Clang.compile_all(input_file, output_file, newlocation, out_type, args=args)

    @staticmethod
    def to_llvm_unopt(input_file, output_file, newlocation):
        """
        Compiles all C files listed in the input file to unoptimized LLVM IR.
        :param input_file: File with list of C file names to compile
        :param output_file: If the file is successfully compiled, the output file is listed in this file
        :param newlocation: location to save LLVM files to
        """
        args = "-O1 -Xclang -disable-llvm-passes -S -emit-llvm"
        out_type = "-unopt.ll"
        Clang.compile_all(input_file, output_file, newlocation, out_type, args=args)


class NoInputFileException(Exception):
    pass

class FileDoesNotExistException(Exception):
    pass

if(__name__ == "__main__"):

    Clang.to_assembly("/mnt/c/Users/User/CLionProjects/decompy/testIn.txt",
        "out.txt", "out")