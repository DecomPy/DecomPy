import os
import re
import shutil


class FilterC:
    """
    Filters C files to our standards. This includes c header files that we find appropraite for machine learning.
    Filters out the maximum amount of bytes we would like in a file. As of now, this is 7000 bytes.
    Filters our words that may be too difficult: malloc, FILE, and threading
    """

    # sets current file directory
    script_dir = os.path.dirname(os.path.realpath('__file__'))

    # set maximum bytes of 8000, it's around 400 lines of code (including comments and whitespace)
    MAX_BYTES = 8000
    MIN_BYTES = 21
    # questionable ones: complex, fenv, setjmp, stdalign, stdarg, stdbool, tgmath, uchar
    C_WHITELIST_HEADERS = ("assert", "complex", "ctype", "errno", "fenv", "float", "inttypes",
                           "limits", "locale", "math", "signal", "stddef", "stdint", "stdio",
                           "stdlib", "stdnoreturn", "string", "tgmath", "time", "wchar", "wctype")
    # bad ones: stdatomic, threads (ruben wants to see threads, malloc, realloc, calloc, and free.
    C_BLACKLIST = ("file", "malloc", "realloc", "calloc", "free")

    def __init__(self):
        """
        init

        Initializes an object to filter C files.
        """

    @staticmethod
    def check_byte_size(file, preferred_max_size=MAX_BYTES, preferred_min_size=MIN_BYTES):
        """
        Finds the file size and tests it against the preferred_size in bytes. The default is 7000 bytes.

        :param file: the file path to test against
        :type: str
        :param preferred_max_size: the preferred size to search for, defaults to 7000.
        :type: int
        :param preferred_min_size: the preferred minimum size to search for, defaults to 21 (for `int main(){return 0;}`)
        :type: int
        :return: boolean
        """

        # combine to get the correct file
        # file = os.path.join(FilterC.script_dir, file)
        file_size = os.stat(file).st_size

        return preferred_max_size > file_size >= preferred_min_size

    @staticmethod
    def check_blacklisted_words(line, blacklisted=C_BLACKLIST):
        """
        Lowercases the line to evaluate, and returns false if any blacklisted word is found.
        :param: the string from a file.
        :type: str
        :param: the blacklisted array.
        :type: str arr
        :return: boolean
        """

        line = line.lower()
        return any(word in line for word in blacklisted)

    @staticmethod
    def check_headers(line, whitelisted=C_WHITELIST_HEADERS):
        """
        Uses a regex to evaluate the line, ignoring the case, and returns false if any unknown header is found.
        :param: the string from a file.
        :type: str
        :param: the blacklisted array, defaults to
        :type: str arr
        :return: boolean
        """
        # checks for comments or empty lines
        if re.match('\\s*(//(.*)*)*$', line):
            return True

        # check to see if we have a #include line.
        if re.match('\\s*#include\\s+', line):
            # matches proper header
            if re.match('(\\s*#include\\s+<\\w+.h>\\s*)+', line):
                return any(word in line for word in whitelisted)
            # otherwise return false
            else:
                return False
        # return true for everything else
        return True

    @staticmethod
    def check_valid_data(file, preferred_max_size=MAX_BYTES, preferred_min_size=MIN_BYTES, whitelisted=C_WHITELIST_HEADERS, blacklisted=C_BLACKLIST):
        """
        Runs validation testing on a given file string. This includes the correct byte size,
        predetermined whitelisted headers, and predetermined blacklisted headers.

        :param file: the file the user wants to validate.
        :type: str
        :param preferred_max_size: the max byte size the user wants
        :type: int
        :param preferred_min_size: the min byte size the user wants
        :param whitelisted: the whitelisted headers to search for.
        :type: tuple or array
        :param blacklisted: the blacklisted words to exclude.
        :type: tuple or array
        :return: bool
        """

        # combine to get the correct file
        # file = os.path.join(FilterC.script_dir, file)

        # check file size
        if not FilterC.check_byte_size(file, preferred_max_size, preferred_min_size):
            return False

        try:
            # open file, read line by line so we don't waste memory
            with open(file) as f:
                # iterate line by line
                for line in f:
                    # must pass our testing from above.
                    if not FilterC.check_headers(line, whitelisted) or FilterC.check_blacklisted_words(line, blacklisted):
                        return False
            return True
        except IOError as e:
            print('IOError', str(e))
            return False


