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
        self.save_json = "repo.json"
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
        self.rf.offline_results(self.repo_json_name, start_page, end_page)  # gather the data and store into json
        repos = self.rf.offline_read_json(self.repo_json_name)  # read the json data
        self.rf.offline_filtered_list(self.repo_json_filtered_name, repos)  # filter the offline results
        self.filtered_repos = self.rf.offline_read_json(self.repo_json_filtered_name)  # read into our filtered repos

        self.rs.batch_format(self.filtered_repos, datetime.datetime.now())  # batch current date and filtered_repos

    def stage2_get_repos(self, test):
        """
        stage 2 of the data gathering process: Scrape all the files from GitHub from the given offline json file.
        :return:
        """
        if not self.filtered_repos:  # if we have repos, then sort through each rep in our json
            self.filtered_repos = self.rf.offline_read_json(self.repo_json_filtered_name)

        # test cases
        if test is not None:
            # get the smallest amount
            if test > self.filtered_repos:
                test = self.filtered_repos

            for repo in test:
                url = repo["url"]  # grab the url from the json to download zip into our destinated folder
                FileGetter.download_all_files(url, os.path.join(self.folder, repo["username"] + "-" + repo["name"]))
        else:
            for repo in self.filtered_repos:
                url = repo["url"]  # grab the url from the json to download zip into our destinated folder
                FileGetter.download_all_files(url, os.path.join(self.folder, repo["username"] + "-" + repo["name"]))

    def stage3_filter_files(self):
        """
        stage 3 of the data gathering process: Filter the files out (C files). Get the good ones.
        :return:
        """
        self.FilterC.check_valid_folder(self.folder)  # seeks the folder and recursively filters them out, default param

    def stage4_generate_llvm(self, llvm_file_path="LLVM", object_file_path="Object"):
        """
        Stage 4 of the data gathering process: Generate LLVM and other data.
        gets file paths for llvm and object file path. Defaults to /LLVM and /Object.
        :param llvm_file_path: the file path to save LLVM files to
        :param object_file_path: the file path to save Object files to
        :return:
        """
        try:
            # open file
            for root, dirs, files in os.walk(self.folder):
                try:
                    # find our filtered json file (default repo.json)
                    json_path = root + "/" + self.save_json
                    if os.path.isfile(json_path):

                        # json path
                        with open(json_path, "r") as json_file:
                            json_data = json.load(json_file)

                        # new array with values
                        filtered_files = []

                        # update time with now to precise minute
                        now_minute = datetime.datetime.today().strftime('%Y-%m-%d %H:%M')
                        json_data["llvm_gen_date"] = now_minute
                        json_data["compilation_date"] = now_minute

                        # get updated filtered_files
                        json_filtered_files = json_data["filtered_files"]

                        # loop through json objects if they exist
                        if json_filtered_files is not None and len(json_filtered_files) > 0:

                            # name, extension = os.path.splitext(basename)  # won't use extension

                            # paths for llvm and object file
                            llvm_folder = root + "/" + llvm_file_path
                            object_folder = root + "/" + object_file_path

                            # loop over file paths in json
                            for filtered_obj in json_data["filtered_files"]:

                                # init the file
                                filtered_file = filtered_obj["filtered_path"]
                                filtered_file_path = Path(filtered_file)

                                # check if file exists or wasting time
                                if filtered_file_path.exists():
                                    object_path = Clang.to_object_file(filtered_file, object_folder)  # compile .o
                                    opt_llvm_path = Clang.to_llvm_opt(filtered_file, llvm_folder)  # compile optimized llvm
                                    unopt_llvm_path = Clang.to_llvm_unopt(filtered_file, llvm_folder)  # compile unoptimized llvm

                                    print(object_path, opt_llvm_path, unopt_llvm_path)

                                    if object_path is not None and opt_llvm_path is not None and unopt_llvm_path is not None:
                                        # add it to object
                                        filtered_files.append({
                                                "filtered_path": filtered_obj["filtered_path"],
                                                "object_path": object_path,
                                                "opt_llvm_path": opt_llvm_path,
                                                "unopt_llvm": unopt_llvm_path
                                            })
                                    else:
                                        filtered_files.append({
                                            "filtered_path": filtered_obj["filtered_path"]
                                        })
                                else:
                                    filtered_files.append({
                                        "filtered_path": filtered_obj["filtered_path"]
                                    })

                            # finally write back the changes.
                            if len(filtered_files) > 0 and filtered_files is not None:
                                with open(json_path, "w") as json_file:
                                    json_data["filtered_files"] = filtered_files
                                    json.dump(json_data, json_file, indent=4, separators=(',', ': '), sort_keys=True)
                    # else:
                    #     print("Stage 4 - Cannot find file: " + json_path)

                except Exception as e:
                    print("Exception Stage 4 json file: ", e)
                    pass

        except Exception as e:
            print("Overall Exception Stage 4: ", e)
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

