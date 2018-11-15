import unittest
from pathlib import Path
from subprocess import CalledProcessError
from decompy.DataGathering.Compilation.GenLLVM import GenLLVM


class TestGenLLVM(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        """
        Initializes the test method by creating an empty directory that will be used to store the output
        :return:
        """
        Path("./llvmDir").mkdir()

    @classmethod
    def tearDownClass(cls):
        """
        Delete directory that stored the output
        :return:
        """
        Path("./llvmDir").rmdir()

    def setUp(self):
        """
        Initializes the test method by creating a blank txt file that will be used as input
        :return:
        """
        self.input_file = open("test-input.txt", "w+")

    def tearDown(self):
        """
        Resets the test method by deleting the input file and all generated files
        :return:
        """
        self.input_file.close()
        input_path = Path("test-input.txt")
        if input_path.is_file():
            input_path.unlink()

        llvm_dir = Path("./llvmDir").iterdir()
        for file in llvm_dir:
            file.unlink()

        llvm_dir2 = Path("./llvmDir2")
        if llvm_dir2.is_dir():
            llvm_dir2_iter = llvm_dir2.iterdir()
            for file in llvm_dir2_iter:
                file.unlink()
            llvm_dir2.rmdir()


    def test_empty_input(self):
        """
        Tests what happens if the input file that should contain the names of c files to compile
        is empty. A successful test will produce nothing with no errora.
        :return:
        """
        GenLLVM.genLLVM("./test-input.txt", "./llvmDir/")


    def test_one_c_file(self):
        """
        Tests what happens if the input file has only one c file. Just getting the edge cases
        out of the way. Should compile the optimized and unoptimized code.
        :return:
        """
        root = Path(__file__).resolve().parent

        self.input_file.write(root.joinpath("./cDir/example.txt.c").resolve().as_posix() +"\n")
        self.input_file.flush()
        GenLLVM.genLLVM("test-input.txt", "./llvmDir/")

        filesmade = Path("./llvmDir").iterdir()
        opt_file = next(filesmade)
        unopt_file = next(filesmade)
        self.assertTrue(opt_file.match("llvmDir/example.txt-opt.ll"), "Correct op file not made. " + str(opt_file))
        self.assertTrue(unopt_file.match("llvmDir/example.txt-unopt.ll"), "Correct unopy file not made. " + str(unopt_file))

    def test_output_folder_dne(self):
        """
        tests_GenLLVM what happens if the location for the llvm output doesn't exist. Should create
        the folder and save all generated llvm to that folder.
        :return:
        """
        root = Path(__file__).absolute().parent

        self.input_file.write(root.joinpath("./cDir/example.txt.c").resolve().as_posix() +"\n")
        self.input_file.write(root.joinpath("./cDir/example2.c").resolve().as_posix() + "\n")
        self.input_file.flush()
        GenLLVM.genLLVM("test-input.txt", "./llvmDir2/")

        files = [Path("./llvmDir2/example.txt-opt.ll"), Path("./llvmDir2/example.txt-unopt.ll"),
                 Path("./llvmDir2/example2-opt.ll"), Path("./llvmDir2/example2-unopt.ll")]

        for file in files:
            self.assertTrue(file.exists())

    def test_c_file_dne(self):
        """
        tests_GenLLVM if the input file contains a file that doesn't exist. Should throw an exception
        (Which exception?)
        :return:
        """
        root = Path(__file__).absolute().parent

        self.input_file.write(root.joinpath("./cDir/example.txt.c").resolve().as_posix() +"\n")
        self.input_file.write(root.joinpath("./cDir/example2.c").resolve().as_posix() + "\n")
        self.input_file.write("/cDir/example3.c\n")
        self.input_file.flush()

        with self.assertRaises(CalledProcessError):
            GenLLVM.genLLVM("test-input.txt", "./llvmDir2/")

    def test_input_file_dne(self):
        """
        tests_GenLLVM if the input file doesn't exist. Should throw an exception (Which exception?)
        :return:
        """
        with self.assertRaises(FileNotFoundError):
            GenLLVM.genLLVM("not_here.txt", "./llvmDir2/")
