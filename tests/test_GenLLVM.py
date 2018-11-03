import unittest
import os
from pathlib import Path
from decompy.GenLLVM.GenLLVM import GenLLVM


class TestGenLLVM(unittest.TestCase):

    def setUp(self):
        """
        Initializes the test method by creating a blank txt file that will be used as input
        :return:
        """
        open("../test-input.txt", "w+")

    def tearDown(self):
        """
        Resets the test method by deleting the input file that was used
        :return:
        """
        os.remove("../test-input.txt")
        llvm_dir = Path("../llvmDir")
        for file in llvm_dir.iterdir():
            file.unlink()


    def test_empty_input(self):
        """
        Tests what happens if the input file that should contain the names of c files to compile
        is empty. A successful test will produce nothing.
        :return:
        """
        GenLLVM.genLLVM("../test-input.txt", "../llvmDir/")


    def test_one_c_file(self):
        """
        Tests what happens if the input file has only one c file. Just getting the edge cases
        out of the way. Should compile the optimized and unoptimized code.
        :return:
        """

    def test_output_folder_dne(self):
        """
        tests what happens if the location for the llvm output doesn't exist. Should create
        the folder and save all generated llvm to that folder.
        :return:
        """

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