from decompy.DataGathering import *
from decompy.database import db
from pathlib import Path
import os
import shutil
import json
import time
from datetime import datetime, timedelta


class CreateLocalData:
    """
    Gathers the data and prepares to use it in stages. This utilizes the following files:
    RepoFilter, GitHubScraper, FilterC, and ClangSubprocess.
    These combined will get all the relevant data
    """
    def __init__(self, folder="Repositories", dest_folder="RepositoriesFiltered", database_name="c_code",
                 repo_dict={"search": "C ", "language": "C", "blacklist": ["C++", "C#", "css"], "per_page": 100},
                 repo_json_name="offlineResults.json", repo_json_filtered_name="filteredOfflineResults.json",
                 filtered_repos=None, save_json="repo.json",config_file="config.json", repo_start_date=None, repo_end_date=None, verbose=True):
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
        :param dest_folder: destination for folder
        :type: str
        :param save_json: where to save the json file to
        :type: str
        :param config_file: the config file to read github info from
        :type: str
        :param repo_start_date: the start date to split the github stuff up because it's annoying
        :type: str
        :param repo_end_date: the end date to split the github stuff up because it's annoying
        :type: str
        :param verbose: whether or not to include the print statements.
        :type: bool
        """
        self.folder = folder
        self.rs = RepoStructure(self.folder)
        self.save_json = save_json
        self.repo_json_name = repo_json_name
        self.dest_folder = dest_folder
        self.repo_json_filtered_name = repo_json_filtered_name
        self.filtered_repos = filtered_repos
        self.FilterC = FilterC()
        self.db = db.Database(database_name)
        self.verbose = verbose
        self.config_file = config_file
        self.username = None
        self.password = None

        # format date time
        if repo_start_date is None:
            repo_start_date = "2013-04-11"

        self.repo_start_date = datetime.strptime(repo_start_date, "%Y-%m-%d").date()

        # get today date
        if repo_end_date is None:
            self.repo_end_date = datetime.today()

        self.authenticated = False
        self.skip = False
        try:
            # check for file
            if os.path.exists(self.config_file):
                # have data
                with open(self.config_file, 'r') as json_file:
                    json_data = json.load(json_file)

                    if "github" in json_data and json_data["github"] is not None \
                            and "username" in json_data["github"] and json_data["github"]["username"] is not None \
                            and "password" in json_data["github"] and json_data["github"]["password"] is not None:
                        self.authenticated = True
                        self.username = json_data['github']['username']
                        self.password = json_data['github']['password']
            else:
                print("Please setup a config file to use github authentication, allowing you more requests.")
        except Exception as e:
            print(e)
            print("Most likely the config file has not been found. " +
                  "Please have a config file so you can use github authentication for more requests.")
        self.rf = RepoFilter(repo_dict["search"], repo_dict["language"], repo_dict["blacklist"], repo_dict["per_page"], self.username, self.password)

    def stage1_gather_repo_meta(self, date, start_page, end_page):
        """
        stage 1 of the data gathering process: Gather the data from the repos and store it into a json file.
        :param date: the date to read from
        :type: str
        :param start_page: where to start getting the data (start page) default is 1.
        :type: int
        :param end_page: where to end the page (end page) default is 2.
        :type: int
        :return: void
        """
        if end_page < start_page:
            print("Start page must be greater than end page.")
            return False

        # gather the data by date and page number and store into json
        self.rf.offline_results(self.repo_json_name, date, start_page, end_page)

        # read the json data
        repos = self.rf.offline_read_json(self.repo_json_name)

        # skip if no repos found
        if len(repos) == 0:
            self.skip = True
            return

        # filter the offline results
        self.rf.offline_filtered_list(self.repo_json_filtered_name, repos)

        # read into our filtered repos
        self.filtered_repos = self.rf.offline_read_json(self.repo_json_filtered_name)

        # batch current date and filtered_repos
        self.rs.batch_format(self.filtered_repos, datetime.today().strftime('%Y-%m-%d %H:%M'))

    def stage2_get_repos(self, test=False, username=None, password=None):
        """
        stage 2 of the data gathering process: Scrape all the files from GitHub from the given offline json file.
        :param test: whether or not to test
        :type: bool
        :param username: the github username to download more data.
        :type: str
        :param password: the github user's password.
        :type: str
        :return: void
        """
        if not self.filtered_repos:  # if we have repos, then sort through each rep in our json
            self.filtered_repos = self.rf.offline_read_json(self.repo_json_filtered_name)

        for repo in self.filtered_repos:
            try:
                if self.verbose:
                    print("Downloading into...", self.folder)
                url = repo["html_url"]  # grab the url from the json to download zip into our destinated folder
                FileGetter.download_all_files(url, os.path.join(self.folder, repo["owner"]["login"] + "-" + repo["name"]), username, password)
                if test:
                    break
            except Exception as e:
                print("stage 2 getting repos error", e)

    def stage3_filter_files(self, unfiltered_key="Unfiltered"):
        """
        stage 3 of the data gathering process: Filter the files out (C files). Get the good ones.
        Use the list provided and then insert them into json format. Currently uses default params.

        :param unfiltered_key: the directory to search through
        :type: str
        :return: void
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
                    now_minute = datetime.today().strftime('%Y-%m-%d %H:%M')
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

    def stage4_generate_llvm(self, folder=None, llvm_file_path="LLVM", object_file_path="Object", elf_file_path="elf", assembly_file_path="assembly"):
        """
        Stage 4 of the data gathering process: Generate LLVM and other data.
        gets file paths for llvm and object file path. Defaults to /LLVM and /Object.

        :param folder: the file path of the folder to compile.
        :type: str
        :param llvm_file_path: the file path to save LLVM files to.
        :type: str
        :param object_file_path: the file path to save Object files to.
        :type: str
        :param elf_file_path: the file path for the elf file, defaults to "elf".
        :type: str
        :param assembly_file_path: the file path for the assembly file, defaults to "assembly".
        :type: str

        :return: void
        """

        if folder is not None:
            self.folder = folder

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
                        now_minute = datetime.today().strftime('%Y-%m-%d %H:%M')
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
                            elf_folder = root + "/" + elf_file_path
                            assembly_folder = root + "/" + assembly_file_path

                            # loop over file paths in json
                            for filtered_obj in json_data["filtered_files"]:

                                # init the file
                                filtered_file = filtered_obj["filtered_path"].replace(" ", "\\ ")  # fix files with spaces in them.
                                filtered_file = cld.change_stored_directory(self.folder, filtered_file)

                                # get file path to confirm
                                filtered_file_path = Path(filtered_file)

                                # check if file exists or wasting time
                                if filtered_file_path.exists():
                                    object_path = Clang.to_object_file(filtered_file, object_folder)  # compile .o
                                    opt_llvm_path = Clang.to_llvm_opt(filtered_file, llvm_folder)  # compile optimized llvm
                                    unopt_llvm_path = Clang.to_llvm_unopt(filtered_file, llvm_folder)  # compile unoptimized llvm
                                    elf_path = Clang.to_elf(filtered_file, elf_folder)                # elf
                                    assembly_path = Clang.to_assembly(filtered_file, assembly_folder) # assembly

                                    if object_path is not None and opt_llvm_path is not None and \
                                            unopt_llvm_path is not None and elf_path is not None and assembly_path is not None:

                                        # add it to object
                                        filtered_files.append({
                                                "filtered_path": filtered_obj["filtered_path"],
                                                "object_path": object_path,
                                                "opt_llvm_path": opt_llvm_path,
                                                "unopt_llvm_path": unopt_llvm_path,
                                                "elf_path": elf_path,
                                                "assembly_path": assembly_path
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

    def stage5_insert_database(self, folder=None):
        """
        stage 5 of the gathering process: load into the database reading the meta and other info.
        :param folder: folder to iterate through to insert into database. Additionally, this generates cleaned C_Code to train off of.
        :type: str
        :return: void
        """
        if folder is None:
            folder = self.folder

        # open file
        for root, dirs, files in os.walk(folder):
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

                            # find the file path then read that c file
                            for file_path in filtered_list:
                                try:
                                    if "opt_llvm_path" in file_path and "unopt_llvm_path" in file_path \
                                            and "object_path" in file_path and "filtered_path" in file_path\
                                            and "assembly_path" in file_path and "elf_path" in file_path:

                                        # get new file path by appending our cwd
                                        cwd = os.getcwd()
                                        llvm_op_file_path = cwd + "/" + cld.change_stored_directory(self.folder, file_path["opt_llvm_path"])
                                        llvm_unop_file_path = cwd + "/" + cld.change_stored_directory(self.folder, file_path["unopt_llvm_path"])
                                        o_file_path = cwd + "/" + cld.change_stored_directory(self.folder, file_path["object_path"])
                                        c_file_path = cld.change_stored_directory(self.folder, file_path["filtered_path"])
                                        c_file_path_read = cld.change_stored_directory(self.folder, cwd + "/" + file_path["filtered_path"])
                                        elf_file_path = cld.change_stored_directory(self.folder, cwd + "/" + file_path["elf_path"])
                                        assembly_file_path = cld.change_stored_directory(self.folder,  cwd + "/" + file_path["assembly_path"])

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
                                            # read c_data and get clean data from it
                                            c_data = cf.read()
                                            clean_c_data = FormatCode.FormatCode.format(c_data)

                                        # read elf
                                        with open(elf_file_path, "rb") as ef:
                                            elf_data = ef.read()

                                        # read assembly
                                        with open(assembly_file_path, "r") as af:
                                            assembly_data = af.read()

                                        # insert meta tuple TODO: get license... But GitHub api doesn't give it?
                                        meta_tuple = (author_repo_key, repo_name, None, repo_url, author,
                                                      filter_approval_date, llvm_gen_date, filter_date,
                                                      compilation_date, master_download_date)
                                        self.db.insert_meta(meta_tuple)

                                        # insert ml tuple
                                        ml_tuple = (c_file_path, author_repo_key, c_data, clean_c_data, object_data, llvm_unop_data,
                                                    llvm_op_data, elf_data, assembly_data)
                                        self.db.insert_ml(ml_tuple)

                                        if self.verbose:
                                            print("Stage5: adding transaction to database...")

                                except Exception as e:
                                    if self.verbose:
                                        print("Stage 5: adding transaction to database ml table", e)
                                    pass

                    except Exception as e:
                        if self.verbose:
                            print("Stage 5: inserting into database meta table", e)
                        pass

    def all_stages_increment(self, start_date=None, end_date=None, start_page=1, end_page=3):
        """
        runs all five stages in increments.
        :param start_date: date to start or pick back up formatted "%Y-%m-%d
        :type: str
        :param end_date: date to end on formatted "%Y-%m-%d
        :type: str
        :param start_page: page to start or pick up from.
        :type: int
        :param end_page: page to end or pick up from.
        :type: int
        :return: void
        """

        # format date time for start and end date.
        if start_date is None:
            start_date = "2013-04-11"

        if end_date is None:
            self.repo_end_date = datetime.today()
        else:
            self.repo_end_date = datetime.strptime(end_date, "%Y-%m-%d").date()

        # start date end date
        self.repo_start_date = datetime.strptime(start_date, "%Y-%m-%d").date()

        # add 1 day
        while self.repo_start_date <= self.repo_end_date:
            self.repo_start_date = self.repo_start_date + timedelta(days=1)

            try:
                # only do 100 repos at a time (1 page) for safety on the json file
                self.stage1_gather_repo_meta(self.repo_start_date, start_page, end_page)

                # skip this, no info
                if self.skip is False:
                    self.stage2_get_repos(False, self.username, self.password)
                    self.stage3_filter_files()
                    self.stage4_generate_llvm()
                    self.stage5_insert_database()

                    files = os.listdir(self.folder)
                    for f in files:
                        try:
                            shutil.move(os.path.join(self.folder, f), os.path.join(self.dest_folder, f))
                        except Exception as e:
                            print("moving files error:", e)
                            pass
                    # remove filtered files in repositories
                    for f in files:
                        try:
                            if os.path.exists(f):
                                shutil.rmtree(f)
                        except Exception as e:
                            print("removing files error", e)
                            pass

                # reset skip
                self.skip = False

            except Exception as e:
                print("Running all stages error:", e)
                pass

    @staticmethod
    def change_stored_directory(folder, file_path):
        """
        Changes the stored directory in the repo.json to the specified folder name.
        This is especially useful if you are changing the name from the recommended "Repositories" to another name.
        :param folder: the new folder to look for
        :param file_path: the file path to change
        :return: the new file path
        :rtype: str
        """
        file = file_path.split('/')
        file[0] = folder
        file_path = "/".join(file)

        return file_path


if __name__ == "__main__":
    # cld = CreateLocalData()
    # cld.stage1_gather_repo_meta()
    # cld.stage2_get_repos()
    # cld.stage3_filter_files()
    # cld.stage4_generate_llvm()
    # cld.stage5_insert_database()
    cld = CreateLocalData()
    print("Beginning to download some C data in 10 seconds...")
    time.sleep(10)
    cld.all_stages_increment("2014-04-11", "2019-04-11", 1, 10)

