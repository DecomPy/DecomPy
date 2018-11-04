import os
import re


class FilterC:
    """
    Filters C files to our standards. This includes c header files that we find appropraite for machine learning.
    Filters out the maximum amount of bytes we would like in a file. As of now, this is 7000 bytes.
    Filters our words that may be too difficult: malloc, FILE, and threading
    """

    # set maximum bytes of 7000
    MAX_BYTES = 7000
    # questionable ones: complex, fenv, setjmp, stdalign, stdarg, stdbool, tgmath, uchar
    C_WHITELIST_HEADERS = ("assert.h", "complex.h", "ctype.h", "errno.h", "fenv.h", "float.h", "inttypes.h",
                           "limits.h", "locale.h", "math.h", "signal.h", "stddef.h", "stdint.h", "stdio.h",
                           "stdlib.h", "stdnoreturn.h", "string.h", "tgmath.h", "time.h", "wchar.h", "wctype.h")
    # bad ones: stdatomic, threads (ruben wants to see threads, malloc, realloc, calloc, and free.
    C_BLACKLIST = ("file", "malloc", "realloc", "calloc", "free")

    def __init__(self):
        """
        init

        Initializes an object to filter C files.
        """

    @staticmethod
    def check_max_bytes(file, preferred_size=MAX_BYTES):
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
        return any(word in line for word in blacklisted)  # TODO: check if I need to use ! on it.

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
        if re.match(line, '^s*//') or line in ('\r', '\r\n'):
            return True
        # check to see if we have a #include line.
        if re.match(line, '/^(\s*#include\s+<\w+.h>\s*;\s*)+/i'):
            return any(word in line for word in whitelisted)

    @staticmethod
    def check_valid_data(file, preferred_size=MAX_BYTES, whitelisted=C_WHITELIST_HEADERS, blacklisted=C_BLACKLIST):
        """
        Runs validation testing on a given file string. This includes the correct byte size,
        predetermined whitelisted headers, and predetermined blacklisted headers.

        :param file: the file the user wants to validate.
        :type: str
        :param preferred_size:
        :type: int
        :param whitelisted:
        :type: tuple or array
        :param blacklisted:
        :type: tuple or array
        :return: bool
        """

        if preferred_size < os.stat(file).st_size:
            return False

        try:
            # open file, read line by line so we don't waste memory
            with open(file) as f:
                for line in f:
                    # must pass our testing from above.
                    if not FilterC.check_headers(line, whitelisted) or FilterC.check_blacklisted_words(line, blacklisted):
                        return False
            return True
        except IOError as e:
            print('IOError', str(e))
            return False



