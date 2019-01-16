from decompy.DataGathering import *
from decompy.database import db
from pathlib import Path
import datetime
import os
import json

import codecs
decode_hex = codecs.getdecoder("hex_codec")


class CreateLocalData:
    """
    Gathers the data and prepares to use it in stages. This utilizes the following files:
    RepoFilter, GitHubScraper, FilterC, and ClangSubprocess.
    These combined will get all the relevant data.
    """
    def __init__(self, repo_dict={"search": "C ", "language": "C", "blacklist": ["C++", "C#", "css"], "per_page": 100},
                 repo_json_name="offineResults.json", repo_json_filtered_name="filteredOfflineResults.json",
                 filtered_repos=None, folder="Repositories", database_name="c_code"):
        """
        initializes a new object, containing the other classes, one to rule them all.
        :param repo_dict: dictionary of data to insert
        :param repo_json_name: the json file to store all the meta data
        :param repo_json_filtered_name: the json file to store all the meta data
        :param filtered_repos: the filtered_repos from "offlineResults.json"
        :param folder: folder to save the repositories to
        :param database_name: name of the database to store info to.
        """
        self.rf = RepoFilter(repo_dict["search"], repo_dict["language"], repo_dict["blacklist"], repo_dict["per_page"])
        self.rs = RepoStructure()
        self.repo_json_name = repo_json_name
        self.repo_json_filtered_name = repo_json_filtered_name
        self.filtered_repos = filtered_repos
        self.FilterC = FilterC()
        self.folder = folder
        self.db = db.Database(database_name)

    def stage1_gather_repo_meta(self, start_page=1, end_page=2):
        """
        stage 1 of the data gathering process: Gather the data from the repos and store it into a json file.
        :param start_page: where to start getting the data (start page) default is 1.
        :param end_page: where to end the page (end page) default is 2.
        :return:
        """
        self.rf.offline_results(self.repo_json_name, start_page, end_page)  # gather the data and store into the json for later use
        repos = self.rf.offline_read_json(self.repo_json_name)  # read the json data
        self.rf.offline_filtered_list(self.repo_json_filtered_name, repos)  # filter the offline results
        self.filtered_repos = self.rf.offline_read_json(self.repo_json_filtered_name)  # read into our filtered repos

        self.rs.batch_format(self.filtered_repos, datetime.datetime.now())  # batch current date and filtered_repos

    def stage2_get_repos(self):
        """
        stage 2 of the data gathering process: Scrape all the files from GitHub from the given offline json file.
        :return:
        """
        if not self.filtered_repos:  # if we have repos, then sort through each rep in our json
            self.filtered_repos = self.rf.offline_read_json(self.repo_json_filtered_name)

        if self.filtered_repos:
            for repo in self.filtered_repos:
                url = repo["url"]  # grab the url from the json to download zip into our destinated folder
                FileGetter.download_all_files(url, os.path.join(self.folder, repo["username"] + "-" + repo["name"]))
        else:
            print("Cannot find file: " + self.repo_json_filtered_name)

    def stage3_filter_file(self):
        """
        stage 3 of the data gathering process: Filter the files out (C files). Get the good ones.
        :return:
        """
        self.FilterC.check_valid_folder(self.folder)  # seeks the folder and recursively filters them out, default param

    def stage4_generate_llvm(self):
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
                        object_file_path = cwd + "/" + base_root + "/Object"

                        # check if file exists or wasting time
                        if my_file.exists():
                            Clang.to_object_file(file, compiled_file_path, object_file_path)  # compile .o
                            Clang.to_llvm_opt(file, compiled_file_path, folder)  # compile optimized llvm
                            Clang.to_llvm_unopt(file, compiled_file_path, folder)  # compile unoptimized llvm

                        else:
                            print("Stage 4: filtered_list.META does not exist in this directory. Exiting folder...") # comment out if you want

                        # if file does not exist (filtered_list.META) then break out of this directory loop.
                        break
        except Exception as e:
            print("Exception", e)
            pass

    def stage5_insert_database(self):
        """
        stage 5 of the gathering process: load into the database reading the meta and other info.

        :return:
        """
        # open file
        for root, dirs, files in os.walk(self.folder):
            try:
                # look for filtered file and LLVM
                for basename in files:

                    # make sure we have compiled data, compiled.META file
                    if basename == "filtered_list.META":
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

                                    c_file_path = line.replace("\n", "")

                                    # full repo path from the file path
                                    # read json info for dates
                                    with open(c_file_path, "r") as jf:
                                        json_data = json.load(jf)
                                        repo_name = json_data["name"]
                                        author = json_data["author"]
                                        filter_date = json_data["filter_date"]
                                        master_download_date = json_data["master_download_date"]
                                        filter_approval_date = json_data["filter_approval_date"]
                                        llvm_gen_date = json_data["llvm_gen_date"]
                                        repo_url = json_data["url"]
                                        compilation_date = json_data["compilation_date"]
                                        author_repo_key = author + "-" + repo_name

                                    # open files to read from
                                    if llvm_op_path.exists() and llvm_unop_path.exists() and o_path.exists():

                                        # read object file
                                        with open(o_file_path, "rb") as object_f:
                                            object_data = object_f.read()

                                        # change to llvm directory and search for file that ends with .c
                                        with open(llvm_op_file_path, "r") as llvm_op_f:
                                            llvm_op_data = llvm_op_f.read()

                                        # read unop file
                                        with open(llvm_unop_file_path, "r") as llvm_unop_f:
                                            llvm_unop_data = llvm_unop_f.read()

                                        # read c file path
                                        with open(c_file_path, "r") as cf:
                                            c_data = cf.read()

                                        # insert ml tuple
                                        ml_tuple = (c_file_path, author_repo_key, c_data, object_data, llvm_unop_data,
                                                    llvm_op_data)
                                        self.db.insert_ml(ml_tuple, True)

                                        # insert meta tuple TODO: get license... But GitHub api doesn't give it?
                                        meta_tuple = (author_repo_key, repo_name, None, repo_url, author,
                                                      filter_approval_date, llvm_gen_date, filter_date,
                                                      compilation_date, master_download_date)
                                        self.db.insert_meta(meta_tuple, True)

                            except Exception as e:
                                print("opening myfile", e)
                                pass

            except Exception as e:
                print("Database stage 5 exception", e)
                pass

    @staticmethod
    def all_stages():
        """
        runs all four stages.
        :return: void
        """
        cld = CreateLocalData()
        cld.stage1_gather_repo_meta()
        cld.stage2_get_repos()
        cld.stage3_filter_file()
        cld.stage4_generate_llvm()
        cld.stage5_insert_database()


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

