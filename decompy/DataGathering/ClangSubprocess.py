import subprocess
import os
from pathlib import Path
import json
import datetime


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

        # relative paths to make it easier in case we move machines.
        relative_path = os.path.splitext(file_in)[0]

        file_out = str(location_path.joinpath(file_name + output_type).resolve())
        command = "clang -Wno-everything " + file_in + " " + args + " -o " +\
                  file_out
        result = subprocess.run(command, shell=True).returncode  #, check=True)

        file_path = newlocation.rsplit('/', 1)[-1] + "/repo.json"
        print(file_path)

        if result == 0:
            outfile.write(relative_path+output_type + "\n")

            # save date into json
            if os.path.isfile(file_path):
                with open(file_path, "r") as json_file:
                    json_data = json.load(json_file)

                now = datetime.datetime.today().strftime('%Y-%m-%d %H:%M:%S')

                # get new time if it's not already there
                if "llvm_gen_date" not in json_data["llvm_gen_date"] or "compilation_date" not in json_data["compilation_date"]\
                        or datetime.strptime(json_data["llvm_gen_date"]) < now:

                    json_data["llvm_gen_date"] = now
                    json_data["compilation_date"] = now

                    with open(file_path, "w") as jsonFile:
                        json.dump(json_data, jsonFile)

            else:
                print("File not found: " + file_path)

            if filter_file:
                filter_file.write(file_in + "\n")

    @staticmethod
    def compile_all(input_file, output_file, newlocation, out_type, filter_file="", args=""):
        """
        Compiles all C files listed in the input file with Clang, using the
        specified args. Stores these files in the specified location and lists
        the new files in the output file. If this is being used to filter the
        input files, the C files that successfully compile will be entered in.

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

        # check if file exists
        input_file_path = Path(input_file)

        # check if my file exists
        if input_file_path.exists():
            file_of_cfiles = open(input_file, 'r')

            location_path = Path(newlocation)

            # creates new directory if one does not exist.
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
        else:
            print("File not Found", input_file)

    @staticmethod
    def to_assembly(input_file, output_file, newlocation):
        """
        compiles all C files listed in the input file to x86 assembly.
        Writes the name of successful files to output file.

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
        successful C files to filter file.

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
        Writes the name of successful files to output file.

        :param input_file: File with list of C file names to compile
        :param output_file: If the file is successfully compiled, the output
        file is listed in this file
        :param newlocation: location to save LLVM files to
        :return:
        """
        args = "-O1 -Xclang -disable-llvm-passes -S -emit-llvm"
        out_type = "-unopt.ll"
        Clang.compile_all(input_file, output_file, newlocation, out_type, args=args)

    @staticmethod
    def to_object_file(input_file, output_file, newlocation):
        """
        Compiles all C files listed in the input file to clang.

        :param input_file: File with list of C file names to compile
        :param output_file: If the file is successfully compiled, the output
        file is listed in this file
        :param newlocation: location to save Object files to
        :return:
        """
        args = "-c "
        out_type = ".o"
        Clang.compile_all(input_file, output_file, newlocation, out_type, args=args)
