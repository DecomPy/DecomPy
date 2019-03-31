import unittest
import os
from decompy.EquivalencyClasses.SnippetRepository import SnippetRepository


class TestRepoStructure(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        # run from /DecomPy/
        cls.fp = os.getcwd() + "/decompy/tests/test_snippets/Snippets/"
        cls.sr = SnippetRepository(cls.fp)

    def test_read_snippets_from_file(self):
        snippets = self.sr._read_snippets_from_file(None)

        self.assertTrue(len(snippets) == 4)

        # have to do this weird loop because it was giving me files in a random order.
        for i in range(len(snippets)):

            # first one
            if snippets[i][0] == "Class1/1.ll":
                # self.assertTrue(snippets[i][0] == "Class1/1.ll")
                self.assertTrue(snippets[i][2] == "Class1")
                self.assertTrue(snippets[i][1] == "; ModuleID = 1.ll\n; test")

            # second
            if snippets[i][0] == "Class1/2.ll":
                # self.assertTrue(snippets[i][0] == "Class1/2.ll")
                self.assertTrue(snippets[i][2] == "Class1")
                self.assertTrue(snippets[i][1] == "; ModuleID = 2.ll")

            # third
            if snippets[i][0] == "Class2/1.ll":
                # self.assertTrue(snippets[i][0] == "Class2/1.ll")
                self.assertTrue(snippets[i][2] == "Class2")
                self.assertTrue(snippets[i][1] == "; ModuleID = 1.ll")

            # fourth
            if snippets[i][0] == "Class2/2.ll":
                # self.assertTrue(snippets[i].id == "Class2/2.ll")
                self.assertTrue(snippets[i][2] == "Class2")
                self.assertTrue(snippets[i][1] == "; ModuleID = 2.ll")
