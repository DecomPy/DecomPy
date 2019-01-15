from decompy.DataGathering import *
from decompy.database import db
from pathlib import Path
import datetime
import os

import codecs
decode_hex = codecs.getdecoder("hex_codec")


class CreateLocalData:
    """
    Gathers the data and prepares to use it in stages. This utilizes the following files:
    RepoFilter, GitHubScraper, FilterC, and ClangSubprocess.
    These combined will get all the relevant data.
    """
    def __init__(self):
        """
        initializes a new object, containing the other classes, one to rule them all.

        """
        self.rf = RepoFilter("C ", language="C", blacklist=["C++", "C#", "css"])  # gets 100 results
        self.rs = RepoStructure()
        self.filtered_repos = None
        self.FilterC = FilterC()
        self.folder = "Repositories"
        self.db = db.Database("c_code")

    def stage1(self):
        """
        stage 1 of the data gathering process: Gather the data from the repos and store it into a json file.

        :return:
        """
        self.rf.offline_results("offlineResults.json", 1, 2)  # gather the data and store into the json for later use
        repos = self.rf.offline_read_json("offlineResults.json")  # read the json data
        self.rf.offline_filtered_list("filteredOfflineResults.json", repos)  # filter the offline results
        self.filtered_repos = self.rf.offline_read_json("filteredOfflineResults.json")  # read into our filtered repos

        self.rs.batch_format(self.filtered_repos, datetime.datetime.now())  # batch current date and filtered_repos

    def stage2(self):
        """
        stage 2 of the data gathering process: Scrape all the files from GitHub.

        :return:
        """
        if not self.filtered_repos:  # if we have repos, then sort through each rep in our json
            self.filtered_repos = self.rf.offline_read_json("filteredOfflineResults.json")  # read into our filtered repos

        if self.filtered_repos:
            for repo in self.filtered_repos:
                url = repo["url"]  # grab the url from the json to scrape
                FileGetter.download_all_files(
                    url, os.path.join("Repositories", repo["username"] + "-" + repo["name"]))  # scrape all the urls
                # into our destined folder
        else:
            print("Cannot find \"filteredOfflineResults.json\"")

    def stage3(self):
        """
        stage 3 of the data gathering process: Filter the C files out. Get the good ones.
        :return:
        """
        self.FilterC.check_valid_folder(self.folder)  # seeks the folder and recursively filters them out, default param

    def stage4(self):
        """
        stage 4 of the data gathering process: Generate LLVM and other data

        :return:
        """
        # recursively loop through all
        try:
            # open file
            for root, dirs, files in os.walk(self.folder):
                # look for *.c in files
                for basename in files:
                    if basename.endswith(".c"):
                        # get name without *.c
                        # name, extension = os.path.splitext(basename)  # won't use extension
                        cwd = os.getcwd()                          # get current working directory
                        base_root = os.path.dirname(root)

                        # check if file exists, get the path from string concat
                        file = cwd + "/" + base_root + "/filtered_list.META"
                        my_file = Path(file)

                        # folder for LLVM
                        folder = cwd + "/" + base_root + "/LLVM"
                        # new files
                        compiled_file_path = base_root + "/compiled.META"

                        # check if file exists or wasting time
                        if my_file.exists():
                            Clang.to_object_file(file, compiled_file_path, cwd+"/"+base_root+"/Object")  # compile object file optimized
                            Clang.to_llvm_opt(file, compiled_file_path, folder)  # compile optimized
                            Clang.to_llvm_unopt(file, compiled_file_path, folder)  # compile unoptimized

                        else:
                            print("Stage 4: filtered_list.META does not exist in this directory. Exiting folder...") # comment out if you want

                        # if file does not exist (filtered_list.META) then break out of this directory loop.
                        break
        except Exception as e:
            print("Exception", e)
            pass

    def stage5(self):
        """
        stage 5 of the gathering process: load into the database reading the meta and other info.

        :return:
        """
        # open file
        for root, dirs, files in os.walk(self.folder):
            try:
                # look for filtered file and LLVM
                for basename in files:

                    # filtered_list.META data
                    if basename == "compiled.META":
                        # get this cwd
                        cwd = root
                        with open(cwd+"/"+basename, "r") as f:
                            try:
                                # find the file path then read that c file
                                for line in f:
                                    # take advantage of the fact that file names cannot have .c unless at the end
                                    filename = line.rsplit('/', 1)[-1]
                                    filename = filename.replace(".c\n", "")

                                    # check if these files exist, then we can continue
                                    llvm_op_file_path = cwd + "/LLVM/" + filename + "-opt.ll"
                                    llvm_op_path = Path(llvm_op_file_path)

                                    llvm_unop_file_path = cwd + "/LLVM/" + filename + "-unopt.ll"
                                    llvm_unop_path = Path(llvm_unop_file_path)

                                    o_file_path = cwd + "/Object/" + filename + ".o"
                                    o_path = Path(o_file_path)

                                    c_file = line.replace("\n", "")
                                    repo_name = cwd.rsplit('/', 1)[-1]

                                    if llvm_op_path.exists() and llvm_unop_path.exists():
                                        # change to llvm directory and search for file that ends with .c
                                        with open(llvm_op_path, "r") as llvm_op_f:
                                            llvm_op_data = llvm_op_f.read()
                                            # llvm_op_data = llvm_op_data.replace("0x", "hex_value")

                                        with open(cwd + "/LLVM/" + filename + "-unopt.ll", "r") as llvm_unop_f:
                                            llvm_unop_data = llvm_unop_f.read()

                                        with open(c_file, "r") as cf:
                                            c_data = cf.read()
                                            self.db.insert_ml(c_file, repo_name, c_data, o_path, llvm_unop_data, llvm_op_data, True)

                            except Exception as e:
                                print("opening myfile", e)
                                pass

            except Exception as e:
                print("Database stage 5 exception", e)
                pass

    @staticmethod
    def all_four_stages():
        """
        runs all four stages.
        :return: void
        """
        cld = CreateLocalData()
        cld.stage1()
        print("stage 1 done")
        cld.stage2()
        print("stage 2 done")
        cld.stage3()
        print("stage 3 done")
        cld.stage4()
        print("stage 4 done")


# if __name__ == "__main__":
#     cld = CreateLocalData()
#     cld.stage1()
#     print("stage 1 done")
#     cld.stage2()
#     print("stage 2 done")
#     cld.stage3()
#     print("stage 3 done")
#     cld.stage4()
#     print("stage 4 done")

