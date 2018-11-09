import sys
import os
p = os.path.abspath(os.path.join(__file__, "../.."))
sys.path.append(p)

import unittest
from pathlib import Path
from subprocess import CalledProcessError
from decompy.DataGathering.GenLLVM import GenLLVM


class TestGenLLVM(unittest.TestCase):

    def setUp(self):
        """
        Initializes the test method by creating a blank txt file that will be used as input
        :return:
        """
        self.input_file = open("test-input.txt", "w+")

    def tearDown(self):
        """
        Resets the test method by deleting the input file that was used
        :return:
        """
        self.input_file.close()
        input_path =  Path("test-input.txt")
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
        self.input_file.write("./cDir/example.c\n")
        self.input_file.flush()
        GenLLVM.genLLVM("test-input.txt", "./llvmDir/")

        filesmade = Path("./llvmDir").iterdir()
        opt_file = next(filesmade)
        unopt_file = next(filesmade)
        self.assertTrue(opt_file.match("llvmDir/example-opt.ll"), "Correct op file not made. " + str(opt_file))
        self.assertTrue(unopt_file.match("llvmDir/example-unopt.ll"), "Correct unopy file not made. " + str(unopt_file))

    def test_output_folder_dne(self):
        """
        tests_GenLLVM what happens if the location for the llvm output doesn't exist. Should create
        the folder and save all generated llvm to that folder.
        :return:
        """
        self.input_file.write("./cDir/example.c\n")
        self.input_file.write("./cDir/example2.c\n")
        self.input_file.flush()
        GenLLVM.genLLVM("test-input.txt", "./llvmDir2/")

        filesMade = Path("./llvmDir2").iterdir()
        opt_file = next(filesMade)
        unopt_file = next(filesMade)
        opt_file2 = next(filesMade)
        unopt_file2 = next(filesMade)

        self.assertTrue(opt_file.match("llvmDir2/example-opt.ll"), "Correct op file not made. " + str(opt_file))
        self.assertTrue(unopt_file.match("llvmDir2/example-unopt.ll"), "Correct unopy file not made. " + str(unopt_file))
        self.assertTrue(opt_file2.match("llvmDir2/example2-opt.ll"), "Correct op file not made. " + str(opt_file2))
        self.assertTrue(unopt_file2.match("llvmDir2/example2-unopt.ll"), "Correct unopy file not made. " + str(unopt_file2))

    def test_c_file_dne(self):
        """
        tests_GenLLVM if the input file contains a file that doesn't exist. Should throw an exception
        (Which exception?)
        :return:
        """
        self.input_file.write("./cDir/example.c\n")
        self.input_file.write("./cDir/example2.c\n")
        self.input_file.write("./cDir/example3.c\n")
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


if __name__=="__main__":
    unittest.main()
