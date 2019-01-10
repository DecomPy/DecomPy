import unittest
import decompy.DataGathering.ClangSubprocess as Clan
import decompy.DataGathering.NoInputFileException
from pathlib import Path


class test_ClangSubprocessTest(unittest.TestCase):
    """
    tests ClangSubprocess class to compile files
    """

    inputC = None
    inputCName = "./testIn"
    outputCName = "./testOut"
    outputElfName = "./testElfOut"
    outputAssemName = "./testAssemOut"
    outputLLVMUnoptName = "./testLLVMUnoptOut"
    outputLLVMOptName = "./testLLVMOptOut"
    outputCompile = "./testCompOut"
    outputFolder = "./outFolder"

    @classmethod
    def setUp(self):
        """
        Initializes
        """
        inputC = open(test_ClangSubprocessTest.inputCName, 'w+')

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
        with self.assertRaises(NoInputFileException) as contextMan:
            Clang.to_assembly(test_ClangSubprocessTest.inputCName, test_ClangSubprocessTest.outputAssemName,
                              test_ClangSubprocessTest.outputFolder)


        with self.assertRaises(Exception) as contextMan:
            Clang.to_elf(test_ClangSubprocessTest.inputCName, test_ClangSubprocessTest.outputElfName,
                         test_ClangSubprocessTest.outputFolder)
        with self.assertRaises(Exception) as contextMan:
            Clang.to_llvm_opt(test_ClangSubprocessTest.inputCName, test_ClangSubprocessTest.outputLLVMUnoptName,
                              test_ClangSubprocessTest.outputFolder)
        with self.assertRaises(Exception) as contextMan:
            Clang.to_llvm_unopt(test_ClangSubprocessTest.inputCName, test_ClangSubprocessTest.outputLLVMOptName,
                                test_ClangSubprocessTest.outputFolder)

    def test_c_file_not_exist(self):
        """

        :return:
        """
    def test_c_file_exists(self):
        """

        :return:
        """

if __name__ == '__main__':
    unittest.main()