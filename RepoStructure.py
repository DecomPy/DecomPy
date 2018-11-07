import os
import json
import datetime


class RepoStructure:
    def __init__(self, parent_dir="."):
        self.parentDir = parent_dir
        self.root = os.path.join(parent_dir, "Repositories")
        RepoStructure.__mkdir(self.root)

    def format_repo(self, repo_json, filter_date):
        name_string = repo_json["username"] + "/" + repo_json["name"]
        repo_dir = os.path.join(self.root, name_string)
        RepoStructure.__mkdir(repo_dir)
        meta_dir = os.path.join(repo_dir, "Config.META")
        RepoStructure.__echo(meta_dir, RepoStructure.__get_meta_inf(repo_json, filter_date))

    @staticmethod
    def __get_meta_inf(repo, filter_date):
        # TODO: Get license info
        meta_file = {
            "url": "%s" % (repo["url"]),
            "author": "%s" % (repo["username"]),
            "filter-date": "%s" % filter_date
        }
        return json.dumps(meta_file)

    @staticmethod
    def __mkdir(folder, clobber=False):
        # Uses lazy evaluation
        if clobber or not os.path.exists(folder):
            os.mkdir(folder)
            return True
        return False

    @staticmethod
    def __echo(filename, string="", clobber=False):
        # Uses lazy evaluation
        if clobber or not os.path.exists(filename):
            with open(filename, "w+") as file:
                file.write(string)
            return True
        return False


if __name__ == "__main__":
    from RepoFilter import RepoFilter

    rs = RepoStructure()
    rf = RepoFilter("C ", language="C", blacklist=["C++", "C#"], per_page=1)
    rf.offline_results("offlineResults.json", 1, 1)
    repos = rf.offline_read_json("offlineResults.json")
    rf.offline_filtered_list("filteredOfflineResults.json", repos)
    filteredRepos = rf.offline_read_json()
