import unittest
import os
import pathlib
from decompy.equivalencyclasses.SnippetRepository import SnippetRepository


class TestRepoStructure(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        # run from /DecomPy/
        cls.fp = os.getcwd() + "/decompy/tests/test_snippets/snippets/"
        cls.sr = SnippetRepository(cls.fp)

    def test_read_snippets_from_file(self):
        snippets = self.sr._read_snippets_from_file(None)

        self.assertTrue(len(snippets) == 6)

        # have to do this weird loop because it was giving me files in a random order.
        for i in range(len(snippets)):

            # first one
            if snippets[i][0] == "class1/1.ll":
                # self.assertTrue(snippets[i][0] == "Class1/1.ll")
                self.assertTrue(snippets[i][2] == "class1")
                self.assertTrue(snippets[i][1] == "; ModuleID = 1.ll\n; test")

            # second
            if snippets[i][0] == "class1/2.ll":
                # self.assertTrue(snippets[i][0] == "Class1/2.ll")
                self.assertTrue(snippets[i][2] == "class1")
                self.assertTrue(snippets[i][1] == "; ModuleID = 2.ll")

            # third
            if snippets[i][0] == "class2/1.ll":
                # self.assertTrue(snippets[i][0] == "Class2/1.ll")
                self.assertTrue(snippets[i][2] == "class2")
                self.assertTrue(snippets[i][1] == "; ModuleID = 1.ll")

            # fourth
            if snippets[i][0] == "class2/2.ll":
                # self.assertTrue(snippets[i].id == "Class2/2.ll")
                self.assertTrue(snippets[i][2] == "class2")
                self.assertTrue(snippets[i][1] == "; ModuleID = 2.ll")

    def test_snippet_repository(self):
        repo = SnippetRepository(os.getcwd() + "/decompy/tests/test_snippets/snippets/snippetrepoexamples")
        s = repo.get_snippets()[0]
        self.assertTrue(s.variable_dict["%2"] == "%1")
        self.assertTrue(s.variable_dict["%3"] == "%5")
        self.assertTrue(s.positive_integer_dict["4"] == 12)
        self.assertTrue(s.positive_integer_dict["5"] == 15)

        # print(s.variable_dict)
        # print(s.ge
        # t_swaps()[0].variable_dict)
        print("Rendered", s.get_rendered_swaps())
        # print(s.get_rendered_swaps())
