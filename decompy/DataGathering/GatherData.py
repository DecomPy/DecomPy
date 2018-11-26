from decompy.DataGathering.RepoFilter import RepoFilter as rf
from decompy.DataGathering.GitHubScraper import GitHubScraper as ghscraper
from decompy.DataGathering.FilterC import FilterC as fc
from decompy.DataGathering.ClangSubprocess import Clang as clang


class GatherData:
    """
    Gathers the data and prepares to load it. This utilizes the following files:
    RepoFilter, GitHubScraper, FilterC, and ClangSubprocess.
    These combined will get all the relevant data.
    """

    def __init__(self):