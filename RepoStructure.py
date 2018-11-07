import os
import json


class RepoStructure:
    def __init__(self, parent_dir="."):
        self.parentDir = parent_dir
        self.root = os.path.join(parent_dir, "Repositories")
        RepoStructure.__mkdir(self.root)

    def batch_format(self, repos_json, filter_date):
        for repo in repos_json:
            self.format_repo(repo, filter_date)

    def format_repo(self, repo_json, filter_date):
        name_string = repo_json["username"] + "-" + repo_json["name"]
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
    import datetime

    rf = RepoFilter("C ", language="C", blacklist=["C++", "C#"])
    rf.offline_results("offlineResults.json", 1, 2)
    repos = rf.offline_read_json("offlineResults.json")
    rf.offline_filtered_list("filteredOfflineResults.json", repos)
    filteredRepos = rf.offline_read_json("filteredOfflineResults.json")

    rs = RepoStructure()
    rs.batch_format(filteredRepos, datetime.datetime.now())
