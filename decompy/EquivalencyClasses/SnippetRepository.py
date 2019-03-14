import os
import errno

from decompy.EquivalencyClasses import Snippet


class SnippetRepository:
    """
    A repository design pattern of snippets.
    """

    def __init__(self):
        self.snippets = []
        self.llvm_path = ".ll"
        pass

    def get_snippets(self):
        """
        Gets the list of snippets that it has read in.
        :return: snippets
        :rtype: list<Snippets>
        """
        return self.snippets

    def read_snippets_from_file(self, file_path):
        """
        reads snippets from destinated file path, only gets .ll files.
        :param: file_path the file path to read from.
        :type: str
        :return:
        """
        # loop through all files from given path
        if not os.path.exists(file_path):
            # example output [Errno 2] No such file or directory: 'your file path'
            raise FileNotFoundError(errno.ENOENT, os.strerror(errno.ENOENT), file_path)

        # walk recursively in given folder
        for root, dirs, files in os.walk(file_path):
            try:
                # get data to construct new snippet object
                # id = folder name past the Snippet stuff + llvm class name
                # class id = folder name past the Snippet stuff
                # llvm = the string representation of LLVM from that file
                
                # search through the files
                for basename in files:
                    # only looking for llvm files
                    if basename.endswith(self.llvm_path):
                        # get info based off root file

                        folder = root.split('/')
                        folder = folder[len(folder)-1]

                        # read in the content
                        with open(root+"/"+basename, "r") as llvm_str:
                            llvm = llvm_str.read()

                        # add snippet to
                        snippet = Snippet.Snippet(folder+"/"+basename, folder, llvm)
                        self.snippets.append(snippet)

            except Exception as e:
                print("Error...", e)
                pass

        return self.snippets

    # look for unfiltered files and only want "Unfiltered" (or filt_path_name)




