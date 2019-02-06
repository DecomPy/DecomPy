import os
import subprocess


class FormatCode:

    @staticmethod
    def _remove_comments(input_path):
        """
        Takes in a C file and removes all comments. Returns a string of the decommented file
        :param input_path: file path to C file
        :return: decommented C source code string
        """
        # Details of the arguments -E and -P are at https://clang.llvm.org/docs/ClangCommandLineReference.html
        preprocess_result = subprocess.run([
            # Call Clang compiler
            "clang",
            # Only run preprocessor stage
            "-E",
            # Disable linemarkers
            "-P",
            # Input file
            input_path,
            # Make an output file instead of printing to stdout
            "-o-"
        ], stdout=subprocess.PIPE)

        return preprocess_result.stdout

    @staticmethod
    def format(input_string):
        """
        Takes in a string of C source code. Returns a string of decommented and formatted C code
        :param input_string: C source code as a string
        :return: Decommented and formatted C source code as a string
        """
        # Create temporary file that the preprocessor can operate on
        with open("preprocess_temp.c", "w") as to_preprocess:
            to_preprocess.write(input_string)
        uncommented_code = FormatCode._remove_comments("preprocess_temp.c")

        # Create temporary file for formatting
        with open("format_temp.c", "wb") as to_format:
            to_format.write(uncommented_code)

        # Format options are found in file .clang-format
        # Format option details are found at https://clang.llvm.org/docs/ClangFormatStyleOptions.html
        formatted_stdout = subprocess.run([
            # Call Clang-format. Try "sudo apt-get install clang-format" if it has an error
            "clang-format",
            # Make it use the formatting from .clang-format, found in nearest parent directory
            "-style=file",
            # input path to read from
            "format_temp.c"
        ], stdout=subprocess.PIPE)

        # File cleanup
        os.remove("preprocess_temp.c")
        os.remove("format_temp.c")

        return formatted_stdout.stdout


if __name__ == "__main__":
    with open("test.c", "r") as f:
        with open("formatted.c", "wb") as g:
            g.write(FormatCode.format(f.read()))
