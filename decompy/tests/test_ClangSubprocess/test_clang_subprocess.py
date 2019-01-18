import unittest
import decompy.DataGathering.ClangSubprocess as Clang
from pathlib import Path


class test_ClangSubprocessTest(unittest.TestCase):
    """
    tests ClangSubprocess class to compile files
    """

    inputC = None
    inputCName = "./testIn.txt"
    outputElfName = "./testElfOut.txt"
    outputAssemName = "./testAssemOut.txt"
    outputLLVMUnoptName = "./testLLVMUnoptOut.txt"
    outputLLVMOptName = "./testLLVMOptOut.txt"
    outputCompile = "./testCompOut.txt"
    outputFolder = "./outFolder"

    @classmethod
    def setUp(self):
        """
        Initializes the input file
        """
        self.inputC = Path(test_ClangSubprocessTest.inputCName)
        self.inputC.touch()

    @classmethod
    def tearDown(self):
        """
        Deletes files created in setup
        """
        self.inputC.unlink()
        Path(test_ClangSubprocessTest.outputElfName).unlink()
        Path(test_ClangSubprocessTest.outputAssemName).unlink()
        Path(test_ClangSubprocessTest.outputLLVMUnoptName).unlink()
        Path(test_ClangSubprocessTest.outputLLVMOptName).unlink()
        Path(test_ClangSubprocessTest.outputCompile).unlink()
        Path(test_ClangSubprocessTest.outputFolder).rmdir()

    def test_empty_input_file(self):
        """
        Attempts to call all compile functions with an empty input file. Should throw NoInputFileException.
        """
        self.inputC.write_text("\n")
        with self.assertRaises(Clang.NoInputFileException):
            Clang.Clang.to_assembly(self.inputCName, self.outputAssemName, self.outputFolder)
        with self.assertRaises(Clang.NoInputFileException):
            Clang.Clang.to_elf(self.inputCName, self.outputElfName, self .outputFolder, self.outputCompile)
        with self.assertRaises(Clang.NoInputFileException):
            Clang.Clang.to_llvm_opt(self.inputCName, self.outputLLVMUnoptName, self.outputFolder)
        with self.assertRaises(Clang.NoInputFileException):
            Clang.Clang.to_llvm_unopt(self.inputCName, self.outputLLVMOptName, self.outputFolder)

    def test_c_file_not_exist(self):
        """
        Attempts to call all compile functions with a file that doesn't exist. Should throw FileDoesNotExistException.
        """
        self.inputC.write_text("not_exist.c")
        with self.assertRaises(Clang.FileDoesNotExistException):
            Clang.Clang.to_assembly(self.inputCName, self.outputAssemName, self.outputFolder)
        with self.assertRaises(Clang.FileDoesNotExistException):
            Clang.Clang.to_elf(self.inputCName, self.outputElfName, self.outputFolder, self.outputCompile)
        with self.assertRaises(Clang.FileDoesNotExistException):
            Clang.Clang.to_llvm_opt(self.inputCName, self.outputLLVMUnoptName, self.outputFolder)
        with self.assertRaises(Clang.FileDoesNotExistException):
            Clang.Clang.to_llvm_unopt(self.inputCName, self.outputLLVMOptName, self.outputFolder)

    def test_c_file_exists(self):
        """
        Attempts to call all compile functions with a correct file. Should compile
        """
        self.inputC.write_text("does_exist.c")
        Clang.Clang.to_assembly(self.inputCName, self.outputAssemName, self.outputFolder)
        self.assertTrue(Path("./outFolder/does_exist-assembly.asm").exists())
        Path("./outFolder/does_exist-assembly.asm").unlink()
        Clang.Clang.to_elf(self.inputCName, self.outputElfName, self.outputFolder, self.outputCompile)
        self.assertTrue(Path("./outFolder/does_exist-elf.elf").exists())
        Path("./outFolder/does_exist-elf.elf").unlink()
        Clang.Clang.to_llvm_opt(self.inputCName, self.outputLLVMUnoptName, self.outputFolder)
        self.assertTrue(Path("./outFolder/does_exist-opt.ll").exists())
        Path("./outFolder/does_exist-opt.ll").unlink()
        Clang.Clang.to_llvm_unopt(self.inputCName, self.outputLLVMOptName, self.outputFolder)
        self.assertTrue(Path("./outFolder/does_exist-unopt.ll").exists())
        Path("./outFolder/does_exist-unopt.ll").unlink()
