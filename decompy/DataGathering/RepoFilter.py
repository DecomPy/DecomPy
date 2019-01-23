import json
from urllib.parse import quote

from decompy.DataGathering.WebNavigator import WebNavigator


class RepoFilter:
    """
    First draft of the RepoFilter using the GitHub api. This class searches for repositories on GitHub matching
    a search. It was written with offline queries in mind as I did not have access to the internet most of the
    time while writing it. This might be useful in the end for backups / redundancy however and provides the
    ability save a list so that another query does not have to be made to GitHub and so that results will not
    change as repositories change. Using too old of a list might be bad however as the content will not match
    what is being filtered on.
    """

    # TODO: Review this class for incorrect documentation. It was written in vim because I was on a flight and wanted to conserve battery.
    # TODO: Review the "online" parts of this class as they have not been thoroughly tested post writing the other parts. (Flight has no Wi-Fi either)

    def __init__(self, search, language=None, blacklist=None, per_page=100):
        """
        Constructor for RepoFilter. Choose search term string, language string, a blacklist for the descriptions (i.e.
        ignore all repos which contain the phrase "C++" in their descriptions), and the number of results to display
        per page. The results per page defaults to 100 as this is the max allowed per page through GitHub's api.

        :param self:
        :param search: A search string
        :type: str
        :param language: The language to limit searches to
        :type: str
        :param blacklist: A list of terms to disallow in the description
        :type: list
        :param per_page: The number of results to gather "per page"
        :type: int
        """

        if blacklist is None:
            blacklist = []
        self.search = search
        self.language = language
        self.blacklist = blacklist
        self.per_page = per_page

    def get_results(self, page):
        """
        Makes a single request to the GitGub api for a page with results matching
        the search criteria

        :param self:
        :param page: Which page of results should be fetched
        :type: int
        """

        language_string = ""
        if self.language:
            language_string = "language=%s&" % self.language

        url = "https://api.github.com/legacy/repos/search/%s?%sstart_page=%d" % (
            quote(self.search), language_string, page)
        content = WebNavigator.getContent(url)
        json_content = json.loads(content)
        return json_content["repositories"]

    def offline_results(self, filename, start_page, end_page):
        """
        Saves the list of all repos for offline usage.
        
        :param filename: The name that will be given to the generated file
        :type: str
        :param start_page: The index of the first page that should be saved
        :type: int
        :param end_page: The index of the last page that should be saved
        :type: int
        """
        # TODO: Test me, I require internet access.
        # TODO: Consider renaming me when I have a better IDE

        all_json = []
        for i in range(start_page, end_page):
            all_json += self.get_results(i)
        with open(filename, "w+") as resultsFile:
            resultsFile.write(json.dumps(all_json))

    def filter_repo(self, repo):
        """
        Determine if the given Repo matches our desired criteria. Uses the GitHub info beyond what
        a simple search has the options of doing.

        :param repo: The json from the GitHub repo to filter
        :type: json
        """
        # TODO: I don't know if "json" is a valid type to put in type for "repo"
        # TODO: Consider double checking GitHub's language feature

        if any([item in repo["description"] for item in self.blacklist]):
            return False
        if repo["size"] < 1000:
            return False
        if repo["fork"]:
            return False
        return True

    def get_filtered_list(self, unfiltered_repos):
        """
        Filters a list of repositories

        :param unfiltered_repos: The list of unfiltered repositories
        :tpye: list
        """

        return list(filter(self.filter_repo, unfiltered_repos))

    def offline_filtered_list(self, filename, unfiltered_repos):
        """
        Filter a list of repositories and save it to JSON for persistent usage
        
        :param filename: The name to save the file as
        :type: str
        :param unfiltered_repos: The list of repos to filter
        :type: list
        """
        # TODO: Definitely need to rename this method

        with open(filename, "w+") as filteredFile:
            filtered = self.get_filtered_list(unfiltered_repos)
            json_filtered = json.dumps(filtered)
            filteredFile.write(json_filtered)

    @staticmethod
    def offline_read_json(filename):
        """
        Read in a json file

        :param filename: The filename to read
        :type: str
        """
        # TODO: Check if the json library can do this directly instead of through a read.

        with open(filename, "r") as resultsFile:
            return json.loads(resultsFile.read())


if __name__ == "__main__":
    rf = RepoFilter("C ", language="C", blacklist=["C++"])

    switch = input("Which action?")
    if switch == "g":
        rf.offline_results("offlineResults.json", 1, 8)
    elif switch == "f":
        repos = rf.offline_read_json("offlineResults.json")
        rf.offline_filtered_list("filteredOfflineResults.json", repos)
