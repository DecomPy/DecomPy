import unittest
import decompy.DataGathering.FilterCompile as fc


class FilterCompileTest(unittest.TestCase):
    """
    tests FilterCompile class to compile
    """
    def setUp(self):
        """
        Initializes a test filter C unit.
        """
        self.FilterCompile = fc.FilterCompile()

    def test_filter_compile(self):
        """
        tests if a file can compile
        :return: assertion
        """

        self.assertTrue(self.FilterCompile.compile_file("decompy/tests/test_filtercfiles/files/binary_search/Unfiltered/binary_search_tree.c"))
        self.assertFalse(self.FilterCompile.compile_file("decompy/tests/test_filtercfiles/files/binary_search/Unfiltered/binary_search_tree_fail.c"))