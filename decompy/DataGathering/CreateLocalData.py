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
    def __init__(self, database_name="c_code",repo_dict={"search": "C ", "language": "C", "blacklist": ["C++", "C#", "css"], "per_page": 100},
                 repo_json_name="offlineResults.json", repo_json_filtered_name="filteredOfflineResults.json",
                 filtered_repos=None, folder="Repositories", save_json="repo.json", verbose=False):
        """
        initializes a new object, containing the other classes, one to rule them all.
        :param database_name: name of the database to store info to.
        :type: str
        :param repo_dict: dictionary of data to insert
        :type: dictionary
        :param repo_json_name: the json file to store all the meta data
        :type: str
        :param repo_json_filtered_name: the json file to store all the meta data
        :type: str
        :param filtered_repos: the filtered_repos from "offlineResults.json"
        :type: str
        :param folder: folder to save the repositories to
        :type: str
        :param save_json: where to save the json file to
        :type: str
        :param verbose: whether or not to include teh print statements.
        :type: bool
        """
        self.rf = RepoFilter(repo_dict["search"], repo_dict["language"], repo_dict["blacklist"], repo_dict["per_page"])
        self.rs = RepoStructure()
        self.save_json = save_json
        self.repo_json_name = repo_json_name
        self.repo_json_filtered_name = repo_json_filtered_name
        self.filtered_repos = filtered_repos
        self.FilterC = FilterC()
        self.folder = folder
        self.db = db.Database(database_name)
        self.verbose = verbose

    def stage1_gather_repo_meta(self, start_page=1, end_page=2):
        """
        stage 1 of the data gathering process: Gather the data from the repos and store it into a json file.
        :param start_page: where to start getting the data (start page) default is 1.
        :param end_page: where to end the page (end page) default is 2.
        :return:
        """
        if end_page < start_page:
            print("Start page must be greater than end page.")
            return False

        self.rf.offline_results(self.repo_json_name, start_page, end_page)  # gather the data and store into json
        repos = self.rf.offline_read_json(self.repo_json_name)  # read the json data
        self.rf.offline_filtered_list(self.repo_json_filtered_name, repos)  # filter the offline results
        self.filtered_repos = self.rf.offline_read_json(self.repo_json_filtered_name)  # read into our filtered repos

        # batch current date and filtered_repos
        self.rs.batch_format(self.filtered_repos, datetime.datetime.today().strftime('%Y-%m-%d %H:%M'))

    def stage2_get_repos(self, test=False):
        """
        stage 2 of the data gathering process: Scrape all the files from GitHub from the given offline json file.
        :param test: whether or not to test
        :type: test
        :return:
        """
        if not self.filtered_repos:  # if we have repos, then sort through each rep in our json
            self.filtered_repos = self.rf.offline_read_json(self.repo_json_filtered_name)

        for repo in self.filtered_repos:
            url = repo["url"]  # grab the url from the json to download zip into our destinated folder
            FileGetter.download_all_files(url, os.path.join(self.folder, repo["username"] + "-" + repo["name"]))
            if test:
                break

    def stage3_filter_files(self, unfiltered_key="Unfiltered"):
        """
        stage 3 of the data gathering process: Filter the files out (C files). Get the good ones.
            Use the list provided and then insert them into json format. Currently uses default params.
        :param unfiltered_key: the directory to search through
        :type: str
        :return:
        """
        # walk recursively in given folder only looking for 'Unfiltered'
        for root, dirs, files in os.walk(self.folder):

            if unfiltered_key in dirs:
                ufolder = root + "/" + unfiltered_key
                filtered_list = self.FilterC.check_valid_folder(ufolder)

                # init empty and loop through the files
                filtered_files = []

                # read json if it exists
                json_path = root + "/" + self.save_json
                if os.path.isfile(json_path):
                    # load json
                    with open(json_path, "r") as json_file:
                        json_data = json.load(json_file)

                    # update time
                    now_minute = datetime.datetime.today().strftime('%Y-%m-%d %H:%M')
                    json_data["filter_approval_date"] = now_minute

                    for file_path in filtered_list:
                        # filtered_files.append({"filtered_path": file_path}) # uncomment if you want to add all

                        found = False
                        # if it's already in there, then don't add it, don't want to mess up any more data
                        for value in filtered_files:
                            if file_path in value["filtered_path"]:
                                found = True
                                break

                        # not found, then create it and add to array
                        if not found:
                            filtered_files.append({"filtered_path": file_path})

                    # finally write back to it if it has changed
                    with open(json_path, "w") as json_file:
                        json_data["filtered_files"] = filtered_files
                        json.dump(json_data, json_file, indent=4, separators=(',', ': '), sort_keys=True)

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

                                    if object_path is not None and opt_llvm_path is not None and unopt_llvm_path is not None:
                                        # add it to object
                                        filtered_files.append({
                                                "filtered_path": filtered_obj["filtered_path"],
                                                "object_path": object_path,
                                                "opt_llvm_path": opt_llvm_path,
                                                "unopt_llvm_path": unopt_llvm_path
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
                    if self.verbose:
                        print("Exception Stage 4 json file: ", e)
                    pass

        except Exception as e:
            if self.verbose:
                print("Overall Exception Stage 4: ", e)
            pass

    def stage5_insert_database(self):
        """
        stage 5 of the gathering process: load into the database reading the meta and other info.

        :return:
        """
        # open file
        for root, dirs, files in os.walk(self.folder):
            # find our filtered json file (default repo.json)
            json_path = root + "/" + self.save_json
            if os.path.isfile(json_path):
                # json path
                with open(json_path, "r") as json_file:
                    json_data = json.load(json_file)
                    try:
                        # files to read from
                        filtered_list = json_data["filtered_files"]

                        if "llvm_gen_date" in json_data:
                            # meta data info
                            repo_name = json_data["name"]
                            author = json_data["author"]
                            filter_date = json_data["filter_date"]
                            master_download_date = json_data["master_download_date"]
                            filter_approval_date = json_data["filter_approval_date"]
                            llvm_gen_date = json_data["llvm_gen_date"]
                            repo_url = json_data["url"]
                            compilation_date = json_data["compilation_date"]
                            author_repo_key = author + "-" + repo_name

                            # insert meta tuple TODO: get license... But GitHub api doesn't give it?
                            meta_tuple = (author_repo_key, repo_name, None, repo_url, author,
                                          filter_approval_date, llvm_gen_date, filter_date,
                                          compilation_date, master_download_date)
                            self.db.insert_meta(meta_tuple, True)

                            # find the file path then read that c file
                            for file_path in filtered_list:
                                try:
                                    if "opt_llvm_path" in file_path and "unopt_llvm_path" in file_path \
                                            and "object_path" in file_path and "filtered_path" in file_path:

                                        # get new file path by appending our cwd
                                        cwd = os.getcwd()
                                        llvm_op_file_path = cwd + "/" + file_path["opt_llvm_path"]
                                        llvm_unop_file_path = cwd + "/" + file_path["unopt_llvm_path"]
                                        o_file_path = cwd + "/" + file_path["object_path"]
                                        c_file_path = file_path["filtered_path"]
                                        c_file_path_read = cwd + "/" + file_path["filtered_path"]

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
                                        with open(c_file_path_read, "r") as cf:
                                            c_data = cf.read()

                                        # insert ml tuple
                                        ml_tuple = (c_file_path, author_repo_key, c_data, object_data, llvm_unop_data,
                                                    llvm_op_data)
                                        self.db.insert_ml(ml_tuple, True)

                                except Exception as e:
                                    if self.verbose:
                                        print("Stage 5: inserting into database ml table", e)
                                    pass

                    except Exception as e:
                        if self.verbose:
                            print("Stage 5: inserting into database meta table", e)
                        pass

    @staticmethod
    def all_stages_increment(start_page=1, end_page=1000):
        """
        runs all five stages in increments.
        :param start_page: page to start or pick back up.
        :type: int
        :param end_page: page to end on.
        :type: int
        :return: void
        """
        cld = CreateLocalData()

        while start_page < end_page:
            try:
                # only do 100 repos at a time (1 page) for safety on the json file
                cld.stage1_gather_repo_meta(start_page, start_page+1)
                cld.stage2_get_repos()
                cld.stage3_filter_files()
                cld.stage4_generate_llvm()
                cld.stage5_insert_database()
                start_page += 1

            except Exception as e:
                print("Running all stages error:", e)
                pass

#
# if __name__ == "__main__":
#     cld = CreateLocalData()
#     cld.stage1_gather_repo_meta()
#     cld.stage2_get_repos()
#     cld.stage3_filter_files()
#     cld.stage4_generate_llvm()
#     cld.stage5_insert_database()

