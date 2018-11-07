import sys
import os
p = os.path.abspath(os.path.join(__file__, "../.."))
sys.path.append(p)
print("SYSPATH", sys.path)

import unittest
from pathlib import Path
from GenLLVM.GenLLVM import GenLLVM


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
        self.input_file.unlink()
        llvm_dir = Path("./llvmDir")
        for file in llvm_dir.iterdir():
            file.unlink()


    def test_empty_input(self):
        """
        Tests what happens if the input file that should contain the names of c files to compile
        is empty. A successful test will produce nothing.
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
        self.assertTrue(len(os.listdir("./llvmDir")) == 1, "C Directory has too little or too many files." +
                        str(len(os.listdir("./llvmDir"))))

    def test_output_folder_dne(self):
        """
        tests what happens if the location for the llvm output doesn't exist. Should create
        the folder and save all generated llvm to that folder.
        :return:
        """
        self.input_file.write("./cDir/example.c\n")
        self.input_file.write("./cDir/example2.c\n")
        self.input_file.flush()
        GenLLVM.genLLVM("test-input.txt", "./llvmDir2/")
        self.assertTrue(len(os.listdir("./llvmDir2")) == 2, "C Directory has too little or too many files."
                        + str(len(os.listdir("./llvmDir"))))

    def test_c_file_dne(self):
        """
        tests if the input file contains a c file that doesn't exist. Should throw an exception
        (Which exception?)
        :return:
        """

    def test_input_file_dne(self):
        """
        tests if the input file doesn't exist. Should throw an exception (Which exception?)
        :return:
        """

if __name__=="__main__":
    unittest.main()
