import json
import requests
from urllib.parse import quote
import time
import datetime
from datetime import datetime
# from decompy.DataGathering.WebNavigator import WebNavigator


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

    def __init__(self, search, language=None, blacklist=None, per_page=100, username=None, password=None):
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
        :param username: the user's github name
        :param password: the user's github password for authentication for more repos
        """

        if blacklist is None:
            blacklist = []
        self.search = search
        self.language = language
        self.blacklist = blacklist
        self.per_page = per_page
        self.username = username
        self.password = password

    def get_results(self, date, page):
        """
        Makes a single request to the GitGub api for a page with results matching
        the search criteria

        :param date: because github only allows us 1000 results because they are bad at making an api.
        :type; str

        :param self:
        :param page: Which page of results should be fetched
        :type: int
        """

        language_string = ""
        if self.language:
            language_string = "language:%s" % "C"

        url = "https://api.github.com/search/repositories?q=%s%s+created:%s&page=%d" % (
            quote(self.search), language_string, date, page)
        # pageSource = ""
        response = None
        try:
            # Download the zip of the repository
            if self.username is not None and self.password is not None:
                response = requests.get(url, auth=(self.username, self.password))
            else:
                response = requests.get(url)
        except Exception as e:
            print("Getting url, error", e)
            pass

        try:
            # test for 403
            if response.status_code == 403:
                # get time that we need to wait and wait for that time.
                print("uh oh, rate limited!")

                # wait their time if found
                limit = response.headers
                if "X-RateLimit-Reset" in limit:

                    # parses time to wait in seconds
                    wait = int(limit["X-RateLimit-Reset"]) - datetime.today().timestamp()
                    time.sleep(wait + 1)
                else:
                    time.sleep(120)  # wait 2 minutes then try again.

            json_content = json.loads(response.content)
            return json_content["items"]

        except Exception as e:
            print("JSON web navigator error", e)
        return None

    def offline_results(self, filename, date, start_page, end_page):
        """
        Saves the list of all repos for offline usage.

        :param filename: The name that will be given to the generated file
        :type: str
        :param date: the date to search for
        :type: str
        :param start_page: The index of the first page that should be saved
        :type: int
        :param end_page: The index of the last page that should be saved
        :type: int
        """

        all_json = []
        for i in range(start_page, end_page):
            all_json += self.get_results(date, i)
        with open(filename, "w+") as results_file:
            results_file.write(json.dumps(all_json))

    def filter_repo(self, repo):
        """
        Determine if the given Repo matches our desired criteria. Uses the GitHub info beyond what
        a simple search has the options of doing.

        :param repo: The json from the GitHub repo to filter
        :type: json
        """

        if repo is None:
            return False

        if "fork" not in repo and "description" not in repo and "size" not in repo:
            return False

        if "description" in repo and repo["description"] is not None:
            if any([item in repo["description"] for item in self.blacklist]):
                return False
        if "size" in repo and repo["size"] is not None:
            if repo["size"] < 1000:
                return False
        if "fork" in "fork" and repo["fork"] is not None:
            if repo["fork"]:
                return False
        return True

    def get_filtered_list(self, unfiltered_repos):
        """
        Filters a list of repositories

        :param unfiltered_repos: The list of Unfiltered repositories
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

        with open(filename, "w+") as filtered_file:
            filtered = self.get_filtered_list(unfiltered_repos)
            json_filtered = json.dumps(filtered)
            filtered_file.write(json_filtered)

    @staticmethod
    def offline_read_json(filename):
        """
        Read in a json file

        :param filename: The filename to read
        :type: str
        """

        with open(filename, "r") as json_file:
            return json.load(json_file)


if __name__ == "__main__":
    rf = RepoFilter("C ", language="C", blacklist=["C++"])

    switch = input("Which action?")
    if switch == "g":
        rf.offline_results("offlineResults.json", 1, 8)
    elif switch == "f":
        repos = rf.offline_read_json("offlineResults.json")
        rf.offline_filtered_list("filteredOfflineResults.json", repos)
