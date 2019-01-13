import unittest
import decompy.DataGathering.ClangSubprocess as Clang
from pathlib import Path


class test_ClangSubprocessTest(unittest.TestCase):
    """
    tests ClangSubprocess class to compile files
    """

    inputC = None
    inputCName = "./testIn.txt"
    outputCName = "./testOut.txt"
    outputElfName = "./testElfOut.txt"
    outputAssemName = "./testAssemOut.txt"
    outputLLVMUnoptName = "./testLLVMUnoptOut.txt"
    outputLLVMOptName = "./testLLVMOptOut.txt"
    outputCompile = "./testCompOut.txt"
    outputFolder = "./outFolder"

    @classmethod
    def setUp(self):
        """
        Initializes
        """
        self.inputC = open(test_ClangSubprocessTest.inputCName, 'w+')

    @classmethod
    def tearDown(self):
        """

        :return:
        """
        # test_ClangSubprocessTest.inputC.unlink()

    def test_empty_input_file(self):
        """
        Attempts to call all compile functions with an empty input file (no c files listed). Should throw an
        exception.
        :return:
        """
        self.inputC.write("\n")
        with self.assertRaises(Clang.NoInputFileException):
            Clang.Clang.to_assembly(test_ClangSubprocessTest.inputCName, test_ClangSubprocessTest.outputAssemName,
                                    test_ClangSubprocessTest.outputFolder)
        with self.assertRaises(Clang.NoInputFileException):
            Clang.Clang.to_elf(test_ClangSubprocessTest.inputCName, test_ClangSubprocessTest.outputElfName,
                               test_ClangSubprocessTest.outputFolder)
        with self.assertRaises(Clang.NoInputFileException):
            Clang.Clang.to_llvm_opt(test_ClangSubprocessTest.inputCName, test_ClangSubprocessTest.outputLLVMUnoptName,
                                    test_ClangSubprocessTest.outputFolder)
        with self.assertRaises(Clang.NoInputFileException):
            Clang.Clang.to_llvm_unopt(test_ClangSubprocessTest.inputCName, test_ClangSubprocessTest.outputLLVMOptName,
                                      test_ClangSubprocessTest.outputFolder)

    def test_c_file_not_exist(self):
        """

        :return:
        """

    def test_c_file_exists(self):
        """

        :return:
        """
