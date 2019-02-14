import unittest
import decompy.DataGathering.ClangSubprocess as Clang
from pathlib import Path
import os
import shutil


class ClangSubprocessTest(unittest.TestCase):
    """
    tests ClangSubprocess class to compile files
    """
    cwd = os.getcwd() + "/decompy/tests/test_ClangSubprocess/cDir"
    inputCName = cwd+"/example2.c"

    llvm_path = cwd + "/LLVM"
    assembly_path = cwd + "/assembly"
    elf_path = cwd + "/elf"
    object_path = cwd + "/object"

    @classmethod
    def setUp(self):
        """
        Initializes the input file
        """
        try:
            Path(self.llvm_path).mkdir()
            Path(self.assembly_path).mkdir()
            Path(self.elf_path).mkdir()
            Path(self.object_path).mkdir()

        except Exception as e:
            print(e)

    @classmethod
    def tearDown(self):
        """
        Deletes files created in setup
        """
        try:
            shutil.rmtree(self.llvm_path)
            shutil.rmtree(self.assembly_path)
            shutil.rmtree(self.elf_path)
            shutil.rmtree(self.object_path)
        except Exception as e:
            print(e)
    #
    # def test_empty_input_file(self):
    #     """
    #     Attempts to call all compile functions with an empty input file. Should throw NoInputFileException.
    #     """
    #     with self.assertRaises(Clang.NoInputFileException):
    #         Clang.Clang.to_assembly(self.inputCName, self.assembly_path)
    #     with self.assertRaises(Clang.NoInputFileException):
    #         Clang.Clang.to_elf(self.inputCName, self.elf_path)
    #     with self.assertRaises(Clang.NoInputFileException):
    #         Clang.Clang.to_llvm_opt(self.inputCName, self.llvm_path)
    #     with self.assertRaises(Clang.NoInputFileException):
    #         Clang.Clang.to_llvm_unopt(self.inputCName, self.llvm_path)
    #
    # def test_c_file_not_exist(self):
    #     """
    #     Attempts to call all compile functions with a file that doesn't exist. Should throw FileDoesNotExistException.
    #     """
    #     with self.assertRaises(Clang.FileDoesNotExistException):
    #         Clang.Clang.to_assembly(self.inputCName, self.assembly_path)
    #     with self.assertRaises(Clang.FileDoesNotExistException):
    #         Clang.Clang.to_elf(self.inputCName, self.elf_path)
    #     with self.assertRaises(Clang.FileDoesNotExistException):
    #         Clang.Clang.to_llvm_opt(self.inputCName, self.llvm_path)
    #     with self.assertRaises(Clang.FileDoesNotExistException):
    #         Clang.Clang.to_llvm_unopt(self.inputCName, self.llvm_path)

    def test_c_file_exists(self):
        """
        Attempts to call all compile functions with a correct file. Should compile
        """

        assem_path = Clang.Clang.to_assembly(self.inputCName, self.assembly_path)
        self.assertTrue(Path(assem_path).exists())

        obj_path = Clang.Clang.to_object_file(self.inputCName, self.object_path)
        self.assertTrue(Path(obj_path).exists())
        #
        # elf_path = Clang.Clang.to_elf(self.inputCName, self.elf_path)
        # self.assertTrue(Path(elf_path).exists())

        opt_path = Clang.Clang.to_llvm_opt(self.inputCName, self.llvm_path)
        self.assertTrue(Path(opt_path).exists())

        unopt_path = Clang.Clang.to_llvm_unopt(self.inputCName, self.llvm_path)
        self.assertTrue(Path(unopt_path).exists())
