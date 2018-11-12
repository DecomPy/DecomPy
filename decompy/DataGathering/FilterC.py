import os
import re
from decompy.DataGathering.FilterCompile import FilterCompile


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
    FILE_TYPE = ".c"
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

        # check if file ends with .c
        # if not file.endswith(file_type):
        #     return False

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

    @staticmethod
    def check_valid_folder(folder, filt_path_name="unfiltered", append_file="filtered_list.META", preferred_max_size=MAX_BYTES, preferred_min_size=MIN_BYTES,
                           whitelisted=C_WHITELIST_HEADERS, blacklisted=C_BLACKLIST):
        """
        Runs check_valid_data for each file in the folder path..

        :param folder: the folder the user wants to validate for each C file.
        :type: str
        :param filt_path_name: the filtered path word the user is using to store data once filtered.
        :type: str
        :param append_file: the file to add lines to.
        :type: str
        :param preferred_max_size: the max byte size the user wants.
        :type: int
        :param preferred_min_size: the max byte size the user wants.
        :type: int
        :param whitelisted: the whitelisted headers the user wants.
        :type: tuple or array
        :param blacklisted: the blacklisted words the user wants to exclude.
        :type: tuple or array
        :return: str
        """

        # if no folder exists, then return file does not exist.
        if not os.path.exists(folder):
            return "File Does not Exist"

        # walk recursively in given folder
        try:
            # open file
            for root, dirs, files in os.walk(folder):
                # look for unfiltered files and only want unfilter (or filt_path_name)
                if root.endswith(filt_path_name):
                    # only look for c files
                    for basename in files:
                        # unfiltered name
                        unfiltered_path = root + "/" + basename

                        # checks for valid data, compile, then adds to meta.
                        if FilterC.check_valid_data(unfiltered_path, preferred_max_size, preferred_min_size, whitelisted, blacklisted)\
                                and FilterCompile.compile_file(unfiltered_path):
                            # base root of new file 1 directory above unfiltered/*.c
                            base_root = os.path.dirname(root)

                            # store into new directory
                            new_file = base_root+"/"+append_file

                            # create file if it does not exist
                            if not os.path.exists(new_file):
                                # open to write to it
                                open(new_file, "w+")

                            # append path to list
                            with open(new_file, "a") as myfile:
                                # add file path to list.META
                                myfile.write(unfiltered_path)

                                # check if OS is windows for \r\n
                                if os.name == 'nt':
                                    myfile.write("\r\n")
                                # otherwise it's \n
                                else:
                                    myfile.write("\n")

        except Exception as e:
            print("Exception", e)


# if __name__ == '__main__':
#     f = FilterC()
#     f.check_valid_folder("decompy/tests/test_filtercfiles/")


