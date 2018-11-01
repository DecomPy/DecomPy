# filter standard c headers that we like: [assert, complex=?, ctype, errno=?, float, limits=?, locale=?, math,
# filter by a max of 7000 bytes. Or less than 400 lines.
# malloc, realloc, threads?
import os
import re

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
    # questionable ones: complex, fenv, setjmp, stdalign, stdarg, stdbool, tgmath, uchar
    C_WHITELIST_HEADERS = ("assert.h", "complex.h", "ctype.h", "errno.h", "fenv.h", "float.h", "inttypes.h",
                           "limits.h", "locale.h", "math.h", "signal.h", "stddef.h", "stdint.h", "stdio.h",
                           "stdlib.h", "stdnoreturn.h", "string.h", "tgmath.h", "time.h", "wchar.h", "wctype.h")
    # bad ones: stdatomic, threads,
    C_BLACKLIST = ("file", "malloc", "realloc", "calloc", "free")

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
    def max_bytes_test(file, preferred_size=MAX_BYTES):
        """
        Finds the file size and tests it against the preferred_size in bytes. The default is 7000 bytes.

        :param file: the file path to test against
        :type: str
        :param preferred_size: the preferred size to search for, defaults to 7000.
        :type: int
        :return: boolean
        """
        return preferred_size > os.stat(file).st_size

    @staticmethod
    def check_blacklisted_words(line, blacklisted=C_BLACKLIST):
        """
        Lowercases the line to evaluate, and returns false if any blacklisted word is found.
        :param: the string from a file.
        :type: str
        :param: the blacklisted array, defaults to
        :type: str arr
        :return: boolean
        """

        line = line.lower()
        return any(word in line for word in blacklisted) #TODO: check if I need to use ! on it.

    @staticmethod
    def check_headers(line, whitelisted=C_WHITELIST_HEADERS):
        """
        Lowercases the line to evaluate, and returns false if any blacklisted word is found.
        :param: the string from a file.
        :type: str
        :param: the blacklisted array, defaults to
        :type: str arr
        :return: boolean
        """
        line.lower()

        # checks for comments
        if line.startsWith("//"):
            return True
        # check to see if we have a #include line.
        if re.match('^\s*#include\s+<\w+.h>\s*;'):
            return any(word in line for word in whitelisted)



