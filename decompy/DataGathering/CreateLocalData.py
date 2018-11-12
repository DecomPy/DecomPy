from decompy.DataGathering import *
import datetime


class CreateLocalData:
    def __init__(self):
        self.rf = RepoFilter("C ", language="C", blacklist=["C++", "C#"])
        self.rs = RepoStructure()
        self.filtered_repos = None

    def stage1(self):
        self.rf.offline_results("offlineResults.json", 1, 2)
        repos = self.rf.offline_read_json("offlineResults.json")
        self.rf.offline_filtered_list("filteredOfflineResults.json", repos)
        self.filtered_repos = self.rf.offline_read_json("filteredOfflineResults.json")

        self.rs.batch_format(self.filtered_repos, datetime.datetime.now())

    def stage2(self):
        # TODO: Modify this so that JJ's gets created in my Repositories folders
        if self.filtered_repos:
            for repo in self.filtered_repos:
                url = repo["url"]
                GitHubScraper.downloadAllFiles(url)


if __name__ == "__main__":
    cld = CreateLocalData()
    cld.stage1()
    cld.stage2()
