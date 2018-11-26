from decompy.DataGathering.RepoFilter import RepoFilter
from decompy.DataGathering.RepoStructure import RepoStructure
from decompy.DataGathering.GitHubScraper import GitHubScraper
from decompy.DataGathering.FilterC import FilterC
from decompy.DataGathering.ClangSubprocess import Clang

# from decompy.DataGathering.RepoFilter import RepoFilter
#     import datetime
#
#     rf = RepoFilter("C ", language="C", blacklist=["C++", "C#"])
#     rf.offline_results("offlineResults.json", 1, 2)
#     repos = rf.offline_read_json("offlineResults.json")
#     rf.offline_filtered_list("filteredOfflineResults.json", repos)
#     filteredRepos = rf.offline_read_json("filteredOfflineResults.json")
#
#     rs = RepoStructure()
#     rs.batch_format(filteredRepos, datetime.datetime.now())


class GatherData:
    """
    Gathers the data and prepares to load it. This utilizes the following files:
    RepoFilter, GitHubScraper, FilterC, and ClangSubprocess.
    These combined will get all the relevant data.
    """

    def __init__(self):
        """
        initiliazes a new object, containing the other classes, one to rule them all.
        """
        self.rf = RepoFilter("C ", language="C", blacklist=["C++", "C#", "css"], per_page=100)  # gets 100 results
        self.rs = RepoStructure()
        self.ghs = GitHubScraper()
        self.fc = FilterC()
        self.clang = Clang()


    def hundred(self, ):

