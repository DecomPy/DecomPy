# BSD 3-Clause License
#
# Copyright (c) 2018, Zachary Lynn Monroe, YiZhuang Garrard
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
# * Redistributions of source code must retain the above copyright notice, this
#   list of conditions and the following disclaimer.
#
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
#
# * Neither the name of the copyright holder nor the names of its
#   contributors may be used to endorse or promote products derived from
#   this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
# FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

from WebNavigator import WebNavigator


class GitHubScraper(WebNavigator):
    """Handles finding GitHub file URLs and downloading their contents"""

    DEBUG = True

    @staticmethod
    def getFileURLSFromGitHubRepo(repoURL):
        """
        Finds and returns a list of the absolute URLs of all the files
        within the current master branch of a GitHub repository

        :param repoURL: absolute URL to a GitHub repo e.g. "https://github.com/DecomPy/valid_and_compilable_1"
        :return: a list of absolute URLs to files within the GitHub repo
        """
        url = repoURL
        content = GitHubScraper.getContent(url)
        links = GitHubScraper.getLinks(content)
        absLinks = GitHubScraper.getAbsolute(url, links)

        subURLs = ["/master/"]
        subFolders = []
        sourceFiles = []
        counter = 0

        while counter <= len(subFolders):
            for link in absLinks:
                for subURL in subURLs:
                    if subURL in link:
                        if "#" in link.split("/")[-1]:  # filters URLs that are the same as other URLs
                            continue
                        if "commits" in link.split("/"):  # filters files that are not in main
                            continue
                        if "/blob/" in link:  # /blob/ is a marker for files
                            if link in sourceFiles:
                                continue
                            if "master" in link.split("/"):  # This makes sure only URLs from master branch are saved
                                sourceFiles.append((link.split("/")[-1], link))
                        else:
                            if link in subFolders:
                                continue
                            if "master" in link.split("/"):
                                subFolders.append(link)
                                subURLs.append("/" + link.split("/")[-1] + "/")
            if counter >= len(subFolders):
                break
            url = subFolders[counter]
            content = GitHubScraper.getContent(url)
            links = GitHubScraper.getLinks(content)
            absLinks = GitHubScraper.getAbsolute(url, links)
            counter = counter + 1

        return list(set(sourceFiles))

    @staticmethod
    def getFilesfromGitHubFileURLs(urls):
        """
        Downloads the raw files from GitHub file URLs. Unknown behaviour is URLs are not GitHub file URLs
        :param urls: list of URLs to files in GitHub
        :return: File contents as a list of strings
        """

        pageLinks = [GitHubScraper.getAbsoluteLinksFromPage(i) for i in urls]  # convert relative URLs to absolute URLs
        rawLinks = [[j for j in i if "raw" in j] for i in pageLinks]    # Filter out only URLs that have "raw" in
        # them, because these URLs lead to pages with the content of the file
        rawLinks = [i for rawLinksSub in rawLinks for i in rawLinksSub]  # Flatten a list of lists into a list
        content = [GitHubScraper.getContent(i) for i in rawLinks]   # Get the content of the page (file)
        if GitHubScraper.DEBUG:
            print("urls ", urls)
            print("pagelinks ", pageLinks)
            print("rawLinks ", rawLinks)
            print(content)


if __name__ == "__main__":
    # print("filename/URL pairs: ", GitHubScraper.getFileURLSFromGitHubRepo("https://github.com/DecomPy/valid_and_compilable_1"))
    GitHubScraper.getFilesfromGitHubFileURLs(["https://github.com/DecomPy/valid_and_compilable_1/blob/master/main.c",
                                                "https://github.com/DecomPy/valid_and_compilable_1/blob/master/subfolder/main2.c"])

