import json

from WebNavigator import WebNavigator

class RepoFilter:
    def __init__(self, search, language=None, per_page=100):
        self.search = search
        self.language = language
        self.per_page = per_page

    def getResults(self, page):
        languageString = ""
        if self.language:
            languageString = "language=%s" % (self.language)

        content = WebNavigator.getContent("https://api.github.com/legacy/repos/search/%s?%s&start_page=%d" % (self.search, languageString, page))
        jsonContent = json.loads(content)
        return jsonContent["repositories"]

if __name__ == "__main__":
    rf = RepoFilter("puff the magic dragon", language="python")
    print(rf.getResults(1))
