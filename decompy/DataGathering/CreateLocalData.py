from decompy.DataGathering import *
from pathlib import Path
import datetime
import os


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
        self.folder = "Repositories"

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
                print(repo)
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
        FilterC.check_valid_folder(self.folder)  # seeks the folder and recursively filters them out: uses default param

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
                        name, extension = os.path.splitext(basename)  # won't use extension
                        cwd = os.getcwd()                          # get current working directory
                        base_root = os.path.dirname(root)

                        # check if file exists, get the path from string concat
                        file = cwd + "/" + base_root + "/filtered_list.META"
                        my_file = Path(file)

                        # folder for LLVM
                        folder = cwd + "/" + base_root + "/LLVM"
                        # new files
                        llvm_file = cwd + "/" + root + "/" + name

                        # check if file exists or wasting time
                        if my_file.exists():
                            Clang.to_llvm_opt(file, llvm_file, folder)  # compile optimized
                            Clang.to_llvm_unopt(file, llvm_file, folder)  # compile unoptimized

                        else:
                            print("Stage 4: filtered_list.META does not exist in this directory. Exiting folder...") # comment out if you want

                        # if file does not exist (filtered_list.META) then break out of this directory loop.
                        break
        except Exception as e:
            print("Exception", e)
            pass
    #
    # def stage5(self):
    #     """
    #     stage 5 of the gathering process: load into the database reading the meta and other info.
    #
    #     :return:
    #     """
    #
    #     try:
    #         # open file
    #         for root, dirs, files in os.walk(self.folder):
    #             # look for *.c in files
    #             for basename in files:
    #                 if basename.endswith(".c"):
    #
    #
    #     except Exception as e:
    #         print("Exception", e)
    #         pass


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

