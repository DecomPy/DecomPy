import json
from urllib.parse import quote

from WebNavigator import WebNavigator

class RepoFilter:
    """
    First draft of the RepoFilter using the GitHub api. This class searches for repositories on GitHub matching
    a search. It was written with offline querries in mind as I did not have access to the internet most of the
    time while writing it. This might be useful in the end for backups / redundency however and provides the
    ability save a list so that another querry does not have to be made to GitHub and so that results will not
    change as repositories change. Using too old of a list might be bad however as the content will not match
    what is being filtered on.
    """
    #TODO: Review this class for incorrect documentation. It was written in vim because I was on a flight and wanted to conserve battery.
    #TODO: Review the "online" parts of this class as they have not been thoroughly tested post writing the other parts. (Flight has no Wi-Fi either)

    def __init__(self, search, language=None, blacklist=[], per_page=100):
        """
        Constructor for RepoFilter. Choose search term string, language string, a blacklist for the descriptions (i.e.
        ignore all repos which contain the phrase "C++" in their descriptions), and the number of results to display
        per page. The results per page defaults to 100 as this is the max allowed per page through GitHub's api.

        @param self:
        @param search: A search string
        @type: str
        @param langauge: The language to limit searches to
        @type: str
        @param blacklist: A list of terms to disallow in the description
        @type: list
        @param per_page: The number of results to gather "per page"
        @type: int
        """

        self.search = search
        self.language = language
        self.blacklist = blacklist
        self.per_page = per_page

    def getResults(self, page):
        """
        Makes a single request to the GitGub api for a page with results matching
        the search criteria

        @param self:
        @param page: Which page of results should be fetched
        @type: int
        """

        languageString = ""
        if self.language:
            languageString = "language=%s&" % (self.language)

        url = "https://api.github.com/legacy/repos/search/%s?%sstart_page=%d" % (quote(self.search), languageString, page)
        print(url)
        content = WebNavigator.getContent(url)
        jsonContent = json.loads(content)
        return jsonContent["repositories"]

    def offlineResults(self, filename, startPage, endPage):
        """
        Saves the list of all repos for offline usage.
        
        @param filename: The name that will be given to the generated file
        @type: str
        @param startPage: The index of the first page that should be saved
        @type: int
        @param endPage: The index of the last page that should be saved
        @type: int
        """
        #TODO: Test me, I require internet access.
        #TODO: Consider renaming me when I have a better IDE

        allJson = []
        for i in range(startPage, endPage):
            allJson += self.getResults(i)
        with open(filename, "w+") as resultsFile:
            resultsFile.write(json.dumps(allJson))

    def filterRepo(self, repo):
        """
        Deterime if the given Repo matches our desired criteria. Uses the GitHub info beyond what
        a simple search has the options of doing.

        @param repo: The json from the GitHub repo to filter
        @type: json
        """
        #TODO: I don't know if "json" is a valid type to put in type for "repo"
        #TODO: Consider double checking GitHub's language feature
        
        if any([item in repo["description"] for item in self.blacklist]):
            return False
        if repo["size"] < 1000:
            return False
        if repo["fork"]:
            return False
        return True

    def getFilteredList(self, unfilteredRepos):
        """
        Filters a list of repositories

        @param unfilteredList: The list of unfiltered repositories
        @tpye list
        """

        return list(filter(self.filterRepo, unfilteredRepos))

    def offlineFilteredList(self, filename, unfilteredRepos):
        """
        Filter a list of repositories and save it to JSON for persistent usage
        
        @param filename: The name to save the file as
        @type: str
        @param unfilteredRepos: The list of repos to filter
        @type list
        """
        #TODO: Definitely need to rename this method

        with open(filename, "w+") as filteredFile:
            filtered = self.getFilteredList(unfilteredRepos)
            jsonFiltered = json.dumps(filtered)
            filteredFile.write(jsonFiltered)
    
    def offlineReadJson(self, filename):
        """
        Read in a json file

        @param filename: The filename to read
        @type: str
        """
        #TODO: Check if the json library can do this directly instead of through a read.

        with open(filename, "r") as resultsFile:
            return json.loads(resultsFile.read())


if __name__ == "__main__":
    rf = RepoFilter("C ", language="C", blacklist=["C++"])

    switch = input("Which action?")
    if switch == "g":
        rf.offlineResults("offlineResults.json", 1, 8)
    elif switch == "f":
        repos = rf.offlineReadJson("offlineResults.json")
        rf.offlineFilteredList("filteredOfflineResults.json", repos)

