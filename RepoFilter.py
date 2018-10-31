import json
from urllib.parse import quote

from WebNavigator import WebNavigator

class RepoFilter:
    def __init__(self, search, language=None, per_page=100):
        self.search = search
        self.language = language
        self.per_page = per_page

    def getResults(self, page):
        languageString = ""
        if self.language:
            languageString = "language=%s&" % (self.language)

        url = "https://api.github.com/legacy/repos/search/%s?%sstart_page=%d" % (quote(self.search), languageString, page)
        print(url)
        content = WebNavigator.getContent(url)
        print(content)
        jsonContent = json.loads(content)
        return jsonContent["repositories"]

if __name__ == "__main__":
    rf = RepoFilter("puff the magic dragon")
    print(rf.getResults(1))
