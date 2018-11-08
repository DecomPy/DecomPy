import unittest
import decompy.filtercfiles.filter_c_file as fc
import os
import shutil


class FilterCTest(unittest.TestCase):
    """
    Tests the filter_c_file class and its static methods.
    """

    def setUp(self):
        """
        Initializes a test filter C unit.
        """
        self.FilterC = fc.FilterC()
        self.fail_file = "decompy/tests/test_filtercfiles/files/binary_search/unfiltered/binary_search_tree.c"
        self.pass_file = "decompy/tests/test_filtercfiles/files/fibonnaci_search/unfiltered/fibonacciSearch.c"
        self.folder = "decompy/tests/test_filtercfiles/files/"  # actual folder "decompy/data/Repositories"

    def test_bytes(self):
        """
        tests out the max byte functionality from the filter_c_file class.
        :return: bool assert
        """
        # test the default value with a pass file
        self.assertTrue(self.FilterC.check_byte_size(self.pass_file))

        # test the default value with a fail file
        self.assertFalse(self.FilterC.check_byte_size(self.fail_file))

        # test the file with a given value
        self.assertTrue(self.FilterC.check_byte_size(self.pass_file, 6000))

        # test the file with a given value that will fail
        self.assertFalse(self.FilterC.check_byte_size(self.fail_file, 1))

    def test_blacklisted_words(self):
        """
        tests if the line contains any of the blacklisted words from our list.
        :return: bool assert
        """
        # test against
        test_blacklist = ("main", "return")

        # purposely don't allow this.
        self.assertTrue(self.FilterC.check_blacklisted_words("int main { return 0; }", test_blacklist))

        # test just one of the elements
        self.assertTrue(self.FilterC.check_blacklisted_words("int main", test_blacklist))

        # default test against malloc, we don't care if it compiles right now.
        self.assertTrue(self.FilterC.check_blacklisted_words("int main { malloc; return 0; }"))

        # default test, no blacklisted words.
        self.assertFalse(self.FilterC.check_blacklisted_words("int main { return 0; }"))

        # default test, all blacklisted words
        self.assertTrue(self.FilterC.check_blacklisted_words("int main { FILE* f; malloc(hi); realloc(hi); calloc(again) free(stuff)"))

    def test_headers(self):
        """
        tests if the line contains the correct headers and not standard ones or ones we don't want.
        :return: bool assert
        """
        # test against
        test_headers = ("assert.h", "string.h")

        # includes comments and whitespace
        self.assertTrue(self.FilterC.check_headers(""))
        self.assertTrue(self.FilterC.check_headers(" "))
        self.assertTrue(self.FilterC.check_headers(" //hi"))
        self.assertTrue(self.FilterC.check_headers("//hi"))

        # includes only 1 header
        self.assertTrue(self.FilterC.check_headers("#include <assert.h>; //includes assert", test_headers))

        # includes both headers
        self.assertTrue(self.FilterC.check_headers("#include <assert.h>; #include <string.h; // assert and string.h", test_headers))

        # no headers
        self.assertTrue(self.FilterC.check_headers("int main { return 0; }", test_headers))

        # no headers, default
        self.assertTrue(self.FilterC.check_headers("int main { return 0; }"))

        # wrong headers
        self.assertFalse(self.FilterC.check_headers('#include "stuff.h"; //includes stuff.h outside'))

        # includes correct header format, but not the header we wanted
        self.assertFalse(self.FilterC.check_headers("#include <uchar.h>;"))

    def test_valid_data(self):
        """
        tests the entire file for valid data, combining check_max_bytes, check_blacklisted_words, and check_headers.
        :return: bool assert
        """
        # test against
        test_headers = ("assert.h", "string.h")
        test_headers2 = ("stdio.h", "string.h", "stdlib.h")
        test_blacklist_fail = ("main", "return")

        # use defaults with a pass file
        self.assertTrue(self.FilterC.check_valid_data(self.pass_file))

        # use defaults with a fail file
        self.assertFalse(self.FilterC.check_valid_data(self.fail_file))

        # use preferred bytes
        self.assertFalse(self.FilterC.check_valid_data(self.pass_file, 10))

        # use whitelisted headers with my headers
        self.assertTrue(self.FilterC.check_valid_data(self.pass_file, 7000, 21, test_headers2))

        # fails because it does not contain the tested headers
        self.assertFalse(self.FilterC.check_valid_data(self.pass_file, 9000, 21, test_headers))

        # use blacklisted words with my headers
        self.assertFalse(self.FilterC.check_valid_data(self.pass_file, 7000, 21, test_headers2, test_blacklist_fail))
        self.assertFalse(self.FilterC.check_valid_data(self.fail_file, 9000, 21, test_headers, test_blacklist_fail))

        # use different byte size with headers
        self.assertTrue(self.FilterC.check_valid_data(self.pass_file, 4000, 21, test_headers2))
        self.assertFalse(self.FilterC.check_valid_data(self.pass_file, 1, 1, test_headers2))

    def test_valid_folder(self):
        """
        tests reading a folder and filtering/unfiltering the files.
        :return: bool assert
        :rtype: assert
        """

        # get length before
        list1 = os.listdir("decompy/tests/test_filtercfiles/files/fibonnaci_search/unfiltered")
        number_fib_files1 = len(list1)
        list3 = os.listdir("decompy/tests/test_filtercfiles/files/binary_search/unfiltered")
        number_bin_files1 = len(list3)

        # run valid folder check
        self.FilterC.check_valid_folder(self.folder)

        # get length after
        list2 = os.listdir("decompy/tests/test_filtercfiles/files/fibonnaci_search/filtered")
        number_fib_files2 = len(list2)
        list4 = os.listdir("decompy/tests/test_filtercfiles/files/binary_search/filtered")
        number_bin_files2 = len(list4)

        # assert assumptions
        self.assertTrue(number_fib_files1 == number_fib_files2)
        self.assertFalse(number_bin_files1 == number_bin_files2)

        # move back when done.
        shutil.move("decompy/tests/test_filtercfiles/files/fibonnaci_search/filtered/fibonacciSearch.c",
                    "decompy/tests/test_filtercfiles/files/fibonnaci_search/unfiltered/fibonacciSearch.c")
        shutil.move("decompy/tests/test_filtercfiles/files/fibonnaci_search/filtered/test2.c",
                    "decompy/tests/test_filtercfiles/files/fibonnaci_search/unfiltered/test2.c")


if __name__ == '__main__':
    unittest.main()




