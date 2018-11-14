import subprocess
from pathlib import Path
from decompy.DataGathering.Compilation.Clang_Subprocess import ClangSubprocess


class GenAssembly(ClangSubprocess):
    """

    """

    def __init__(self):
        """

        """
        pass

    def __compile_one(self, file_in, newlocation):
        args = "-S -masm=intel"
        file_name = Path(file_in).stem
        location_path = Path(newlocation)

        file_out = location_path.joinpath(file_name + "-assembly.asm")
        ClangSubprocess.compile(file_in, file_out.absolute(), args)

    def compile_all(self, input_file, newlocation):
        location_path = Path(newlocation)

        if not location_path.is_dir():
            location_path.mkdir()

        file_of_cfiles = open(input_file, 'r')

        for cfile in file_of_cfiles:
            cfile = cfile.rstrip()
            GenAssembly.__compile_one(cfile, newlocation)

        file_of_cfiles.close()


