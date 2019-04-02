Filtering the Files
**************************

This is a log of major design decisions and reasoning made during the creation of filtering C files of decompy.
At the time of writing this, this is made up of one class: filter_c_file.py and considers three major components:
the file size of each file, a blacklist, a whitelist, and finally compiling. Once the file has passed all tests,
the path is stored into a file, which can be read.

-----------------------------------------------------------------------------------------------------------------

File Size
    The filter then looks for the file size to filter for around 400 lines of code. This is set to 8000 bytes by default.

-----------------------------------------------------------------------------------------------------------------

Blacklist
    The blacklist searches for words that we do not want or that may be too difficult for the early stages of
    this project. Currently we have blacklisted words such as: malloc, realloc, free, calloc, file.

-----------------------------------------------------------------------------------------------------------------

Whitelist
    The whitelist searches for compatible header files to store. If the file does not contain any of these headers
    it does not pass the test. The only exception is when a file does not use any header, it passes.
    "assert", "complex", "ctype", "errno", "fenv", "float", "inttypes", "limits", "locale", "math", "signal",
    "stddef", "stdint", "stdio", "stdlib", "stdnoreturn", "string", "tgmath", "time", "wchar", "wctype" are the default headers.


