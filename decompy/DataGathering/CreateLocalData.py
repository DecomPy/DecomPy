from decompy.DataGathering import *
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
        if self.filtered_repos:  # if we have repos, then sort through each rep in our json
            for repo in self.filtered_repos:
                print(repo)
                url = repo["url"]  # grab the url from the json to scrape
                GitHubScraper.download_all_files(
                    url, os.path.join("Repositories", repo["username"] + "-" + repo["name"]))  # scrape all the urls
                # into our destined folder

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
        cwd = os.getcwd()  # get current working directory

        # recursively loop through all
        try:
            # open file
            for root, dirs, files in os.walk(self.folder):
                # look for *.c in files
                for basename in files:
                    if basename.endswith(".c"):
                        # get name without *.c
                        name, extension = os.path.splitext(basename)  # won't use extension

                        print("root", root)
                        print("dirs", dirs)
                        print("files", files)
                        print("name", name)
                        print("extension", extension)
                        print("basename", basename)

                        Clang.to_llvm_opt(root+"/"+basename, root+"/"+name, cwd+"/"+root)  # compile optimized
                        # Clang.to_llvm_unopt(root+"/"+basename, root+"/"+name+"_unop.ll", cwd+"/"+root)  # compile unoptimized
                        # Clang.to_llvm_unopt(root + "/" + basename, root + "/" + name,  cwd + "/" + root)  # compile unoptimized


        except Exception as e:
            print("Exception", e)
            pass


if __name__ == "__main__":
    cld = CreateLocalData()
    # cld.stage1()
    # print("stage 1 done")
    # cld.stage2()
    # print("stage 2 done")
    # cld.stage3()
    # print("stage 3 done")
    cld.stage4()
    print("stage 4 done")

