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

from decompy.DataGathering.WebNavigator import WebNavigator
import os
import time
import fileinput
import urllib.request, urllib.error, urllib.parse
import threading

class GitHubScraper(WebNavigator):
    """Handles finding GitHub file URLs and downloading their contents"""

    DEBUG = False   # Whether to print debug info or not
    TIMING = False  # Whether to print timing info or not
    TIMER = 0       # Used if TIMING is enabled
    pageContents = []   # Used for multithreading in __getContent
    subURLs = []        # Used for multithreading in __getFileURLSFromGitRepo
    subFolders = []     # Used for multithreading in __getFileURLSFromGitRepo
    sourceFiles = []    # Used for multithreading in __getFileURLSFromGitRepo
    pageLinks = []       # Used for multithreading in __getAbsoluteLinksFromPage

    @staticmethod
    def __getFileURLSFromGitHubRepo(url):
        """
        Function for multithreaded web scraping. Called by getFileURLSFromGitHubRepo. Not recommended for outside use
        :param url: url of GitHub Repo or a folder within that repo
        :return: Nothing
        """
        content = GitHubScraper.getContent(url)
        links = GitHubScraper.getLinks(content)
        # The following block removes links that don't need to be followed
        linksToRemove = []
        for link in links:
            if "/blob/" in link:
                continue
            if "master" in link.split("/"):
                continue
            linksToRemove.append(link)
        for link in linksToRemove:
            links.remove(link)

        absLinks = GitHubScraper.getAbsolute(url, links)
        for link in absLinks:
            for subURL in GitHubScraper.subURLs:
                if subURL in link:
                    if "#" in link.split("/")[-1]:  # filters URLs that are the same as other URLs
                        continue
                    if "commits" in link.split("/"):  # filters files that are not in main
                        continue
                    if "/blob/" in link:  # /blob/ is a marker for files
                        if link in GitHubScraper.sourceFiles:
                            continue
                        if ".c" not in link.split("/")[-1]:
                            continue
                        if "master" in link.split("/"):  # This makes sure only URLs from master branch are saved
                            GitHubScraper.sourceFiles.append((link.split("/")[-1], link))
                    else:
                        if link in GitHubScraper.subFolders:
                            continue
                        if "master" in link.split("/"):
                            GitHubScraper.subFolders.append(link)
                            GitHubScraper.subURLs.append("/" + link.split("/")[-1] + "/")

    @staticmethod
    def getFileURLSFromGitHubRepo(repoURL):
        """
        Finds and returns a list of the absolute URLs of all the files
        within the current master branch of a GitHub repository

        :param repoURL: absolute URL to a GitHub repo e.g. "https://github.com/DecomPy/valid_and_compilable_1"
        :return: a list of tuples of file names and absolute URLs within the GitHub repo
        """

        GitHubScraper.subURLs = ["/master/"]
        GitHubScraper.subFolders = [repoURL]
        GitHubScraper.sourceFiles = []
        counter = 0
        threadSpawningCounter = 0

        while counter <= len(GitHubScraper.subFolders):
            # Threading is used here because each download takes about 0.5 seconds.
            tempRange  = range(counter, len(GitHubScraper.subFolders))
            if GitHubScraper.DEBUG:
                threadSpawningCounter = threadSpawningCounter + 1
                print("GITHUBSCRAPER: getFileURLSFromGitHubRepo: Number of time threads are created:",
                      threadSpawningCounter)
            for i in tempRange:
                if GitHubScraper.DEBUG:
                    print("GITHUBSCRAPER: getFileURLSFromGitHubRepo: Thread spawned to look at url",
                          GitHubScraper.subFolders[i])
                thread = threading.Thread(target=GitHubScraper.__getFileURLSFromGitHubRepo,
                                          args=(GitHubScraper.subFolders[counter],))
                counter = counter + 1
                thread.start()
                time.sleep(0.01)  # Wait some time between new threads so that github server doesn't block me
            for i in tempRange:
                thread.join(5)
            if counter >= len(GitHubScraper.subFolders):
                break

        return list(set(GitHubScraper.sourceFiles))

    @staticmethod
    def __getContent(link, index):
        """
        Retrieves the content from a link. This one is used with multithreading

        :param link: An absolute URL
        :return: page content
        :return: str
        """

        pageSource = ""
        try:
            response = urllib.request.urlopen(link)
            try:
                pageSource = response.read().decode(response.headers.get_content_charset())
            except (TypeError, UnicodeDecodeError):
                pass
        except (urllib.error.HTTPError, urllib.error.URLError, TimeoutError):
            pass

        GitHubScraper.pageContents[index] = pageSource

    @staticmethod
    def __getAbsoluteLinksFromPage(link):
        """
        Finds absolute URLs within a page. This function is used from getContentFromGitHubFileURLs via threading

        :param link: the absolute link to resolve
        :return: set of absolute URLs within a page
        """
        content = WebNavigator.getContent(link)
        links = WebNavigator.getLinks(content)
        absLinks = WebNavigator.getAbsolute(link, links)
        GitHubScraper.pageLinks.append(absLinks)

    @staticmethod
    def getContentFromGitHubFileURLs(fileUrlTuples):
        """
        Downloads the raw files from GitHub file URLs. Unknown behaviour is URLs that are not GitHub file URLs
        :param fileUrlTuples: a list of tuples of file names and absolute URLs within the GitHub repo. Get this from getFileURLSFromGitHubRepo
        :return: a list of tuples of file names, file URLs, contents of those files, but NOT actual files. Each tuple in the list is formatted ("name", "url", "content")
        """

        if GitHubScraper.DEBUG:
            print("GITHUBSCRAPER: getContentFromGitHubFileURLS: Getting urls from tuples")
        urls = [i[1] for i in fileUrlTuples]
        if GitHubScraper.DEBUG:
            print("GITHUBSCRAPER: getContentFromGitHubFileURLS: urls:", urls);
            print("GITHUBSCRAPER: getContentFromGitHubFileURLS: Getting absolute URLS on page with the content we want")

        threads = [None] * len(urls)
        GitHubScraper.pageLinks = []    # Clear out list in case there are still things in it
        for i in range(len(urls)):
            threads[i] = threading.Thread(target=GitHubScraper.__getAbsoluteLinksFromPage, args=(urls[i],))
            threads[i].start()
            time.sleep(0.01)  # Wait some time between new threads so that github server doesn't block me
            # GitHubScraper.__getAbsoluteLinksFromPage(urls[i])
        for i in range(len(urls)):
            threads[i].join(5)

        if GitHubScraper.DEBUG:
            print("GITHUBSCRAPER: getContentFromGitHubFileURLS: Filtering URLS to get raw file URLS")
        rawLinks = [[j for j in i if "raw" in j] for i in GitHubScraper.pageLinks]    # Filter out only URLs that have "raw" in
        # them, because these URLs lead to pages with the content of the file
        if GitHubScraper.DEBUG:
            print("GITHUBSCRAPER: getContentFromGitHubFileURLS: Flattening list of URLs")
        rawLinks = [i for rawLinksSub in rawLinks for i in rawLinksSub]  # Flatten a list of lists into a list

        # Threading is used here because each download takes about 0.5 seconds. Parallel downloads will increase throughput
        if GitHubScraper.TIMING:
            GitHubScraper.TIMER = time.time()
        threads = [None] * len(rawLinks)
        GitHubScraper.pageContents = [None] * len(rawLinks)
        for i in range(len(threads)):
            if GitHubScraper.DEBUG:
                print("GITHUBSCRAPER: getContentFromGitHubRepoFileURLS: created thread", i, "to download content from ",
                  rawLinks[i])
            threads[i] = threading.Thread(target=GitHubScraper.__getContent, args=(rawLinks[i], i))
            threads[i].start()
            time.sleep(0.01) # Wait some time between new threads so that github server doesn't block me
        for i in range(len(threads)):
            threads[i].join(5)
        if GitHubScraper.TIMING:
            print("Time to download content:",
                  time.time() - GitHubScraper.TIMER)
            print("GITHUBSCRAPER: getContentFromGitHubRepoFileURLS: Joined thread", i)

        content = GitHubScraper.pageContents
        returnList = []
        # Creates the list of ("file name", "file URL", "file content") tuples
        for i,j in zip(fileUrlTuples, content):
            returnList.append((i[0], i[1], j))

        # Change DEBUG variable to true to get more info
        if GitHubScraper.DEBUG:
            # print(fileUrlTuples)
            print("urls:", urls)
            print("pagelinks:", GitHubScraper.pageLinks)
            print("rawLinks: ", rawLinks)
            # for i in content:
            #     print(i)
            # print("return value ", returnList)

        return returnList

    @staticmethod
    def fileContentIntoStorage(contentUrlTuple):
        """
        Writes the content of a string into a file given a list of tuples of filenames and strings
        :param contentUrlTuple: list of tuples, with each tuple being ("fileName", "fileURL", "fileContent"). Get this from getContentFromGitHubFileURLs
        :return: True if successful, False otherwise
        """

        # If the input list is empty, can't create folder
        if len(contentUrlTuple) == 0:
            return False

        # Creates a directory for the repository if one does not exist
        if not os.path.exists(contentUrlTuple[0][1].split("/")[3] + "_" + contentUrlTuple[0][1].split("/")[4]):
            os.mkdir(contentUrlTuple[0][1].split("/")[3] + "_" + contentUrlTuple[0][1].split("/")[4])

        # Create config.META if it doesn't exist, place download timestamp there
        if not(os.path.isfile(os.path.join(contentUrlTuple[0][1].split("/")[3] + "_" + contentUrlTuple[0][1].split("/")[4], "config.META"))):
            with open(os.path.join(contentUrlTuple[0][1].split("/")[3] + "_" + contentUrlTuple[0][1].split("/")[4], "config.META"), "w") as f:
                f.write("File download timestamp: ")
                f.write(time.asctime(time.localtime(time.time())))
        # Otherwise config.META does exist. Update the correct line
        else:
            updateTimeStamp = False
            for line in fileinput.input((os.path.join(contentUrlTuple[0][1].split("/")[3] + "_" + contentUrlTuple[0][1].split("/")[4], "config.META")), inplace=True):
                if "File download timestamp: " in line:
                    print("%s" % ("File download timestamp:" + time.asctime(time.localtime(time.time())))),
                    updateTimeStamp = True
                else:
                    print("%s" % line),
            if not updateTimeStamp:
                with open(os.path.join(contentUrlTuple[0][1].split("/")[3] + "_" + contentUrlTuple[0][1].split("/")[4],
                                       "config.META"), "a") as f:
                    f.write("File download timestamp:")
                    f.write(time.asctime(time.localtime(time.time())))


        # Creates files with contents of repo files inside of directory.
        for i in contentUrlTuple:
            with open(os.path.join(contentUrlTuple[0][1].split("/")[3] + "_" + contentUrlTuple[0][1].split("/")[4], i[0]), "w") as f:
                f.write(i[2])

        return True

    @staticmethod
    def downloadAllFiles(repoURL):
        """
        Composition of functions to download all files in a GitHub repository. Files will be downloaded into a folder named "username_reponame"
        :param repoURL: URL of repository
        :return: nothing
        """
        fileUrlTuples = GitHubScraper.getFileURLSFromGitHubRepo(repoURL)
        fileContentTuples = GitHubScraper.getContentFromGitHubFileURLs(fileUrlTuples)
        GitHubScraper.fileContentIntoStorage(fileContentTuples)


if __name__ == "__main__":
    timer = time.time()
    # fileUrlTuples = GitHubScraper.getFileURLSFromGitHubRepo("https://github.com/DecomPy/valid_and_compilable_1")
    # print("filename/URL pairs: ", fileUrlTuples)
    # fileContentTuples = GitHubScraper.getContentFromGitHubFileURLs(fileUrlTuples)
    # print("filename/content pairs: ", fileContentTuples)
    # GitHubScraper.fileContentIntoStorage(fileContentTuples)
    # GitHubScraper.downloadAllFiles("https://github.com/DecomPy/valid_and_compilable_1")
    # GitHubScraper.downloadAllFiles("https://github.com/hexagon5un/AVR-Programming/tree/master/Chapter06_Digital-Input")
    GitHubScraper.downloadAllFiles("https://github.com/hexagon5un/AVR-Programming")
    print(time.time() - timer)
