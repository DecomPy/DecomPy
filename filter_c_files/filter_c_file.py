# filter standard c headers that we like: [assert, complex=?, ctype, errno=?, float, limits=?, locale=?, math,
# filter by a max of 7000 bytes. Or less than 400 lines.
# malloc, realloc, threads?
import os

class FilterC:
    """
    Filters C files to our standards. This includes c header files that we find appropraite for the machine learning.
    The list as of now is: assert, complex, ctype, errno, float, limits, locale, math...
    Filters out the maximum amount of bytes we would like in a file. As of now, this is 7000 bytes.
    Filters out the number of lines we would like per file. As of now, this is 400 lines.
    Filters our words that may be too difficult: malloc, FILE, and threading
    """

    # set maximum bytes of 7000
    MAX_BYTES = 7000
    MAX_LINES = 400
    C_HEADERS = ["assert", "complex", "ctype", "errno", "float", "limits", "locale", "math"]

    def __init__(self):
        """
        init

        Initializes an object to filter C files.
        """
    # def __init__(self, file):
    #     """
    #
    #     :param file:
    #     """

    @staticmethod
    def max_bytes_test(file, preferred_size = MAX_BYTES):
        """
        finds the file size and tests it against the preferred_size in bytes. The default is 7000 bytes.

        :param file: the file path to test against
        :type: the
        :return:
        """

        file_size = os.stat(file).st_size
        return preferred_size > file_size

    @staticmethod
    def max_lines_test(file, preferred_lines = MAX_LINES):
        """

        :param file:
        :param preferred_lines:
        :return:
        """

        count = 0
        for line in file:
            count += 1
            if count > preferred_lines:
                return False
        return True







    # def max_bytes_test(self):
    #     """
    #
    #     :return:
    #     """


