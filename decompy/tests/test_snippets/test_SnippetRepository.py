import unittest
import os
from decompy.EquivalencyClasses.SnippetRepository import SnippetRepository


class TestRepoStructure(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        cls.sr = SnippetRepository()

        # run from /DecomPy/
        cls.fp = os.getcwd()+"/decompy/tests/test_snippets/Snippets/"

    def test_read_snippets_from_file(self):
        snippets = self.sr.read_snippets_from_file(self.fp)

        self.assertTrue(len(snippets) == 4)

        # have to do this weird loop because it was giving me files in a random order.
        for i in range(len(snippets)):

            # first one
            if snippets[i].id == "Class1/1.ll":
                self.assertTrue(snippets[i].id == "Class1/1.ll")
                self.assertTrue(snippets[i].class_id == "Class1")
                self.assertTrue(snippets[i].llvm == "; ModuleID = 1.ll\n; test")

                # second
            if snippets[i].id == "Class1/2.ll":
                self.assertTrue(snippets[i].id == "Class1/2.ll")
                self.assertTrue(snippets[i].class_id == "Class1")
                self.assertTrue(snippets[i].llvm == "; ModuleID = 2.ll")

                # third
            if snippets[i].id == "Class2/1.ll":
                self.assertTrue(snippets[i].id == "Class2/1.ll")
                self.assertTrue(snippets[i].class_id == "Class2")
                self.assertTrue(snippets[i].llvm == "; ModuleID = 1.ll")

                # fourth
            if snippets[i].id == "Class2/2.ll":
                self.assertTrue(snippets[i].id == "Class2/2.ll")
                self.assertTrue(snippets[i].class_id == "Class2")
                self.assertTrue(snippets[i].llvm == "; ModuleID = 2.ll")
