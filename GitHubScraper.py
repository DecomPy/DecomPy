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
import os
import time
import fileinput

class GitHubScraper(WebNavigator):
    """Handles finding GitHub file URLs and downloading their contents"""

    DEBUG = False   # Whether to print debug info or not
    TIMING = True  # Whether to print timing info or not
    TIMER = 0       # Used if TIMING is enabled

    @staticmethod
    def getFileURLSFromGitHubRepo(repoURL):
        """
        Finds and returns a list of the absolute URLs of all the files
        within the current master branch of a GitHub repository

        :param repoURL: absolute URL to a GitHub repo e.g. "https://github.com/DecomPy/valid_and_compilable_1"
        :return: a list of tuples of file names and absolute URLs within the GitHub repo
        """

        subURLs = ["/master/"]
        subFolders = []
        sourceFiles = []
        counter = 0

        url = repoURL
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
                            if ".c" not in link.split("/")[-1]:
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
            if GitHubScraper.TIMING:
                GitHubScraper.TIMER = time.time()
            content = GitHubScraper.getContent(url)

            if GitHubScraper.TIMING:
                print("GITHUBSCRAPER: Time to get content from", url, ":", time.time() - GitHubScraper.TIMER)
                GitHubScraper.TIMER = time.time()

            links = GitHubScraper.getLinks(content)

            if GitHubScraper.TIMING:
                print("GITHUBSCRAPER: Time to get links from content:", time.time() - GitHubScraper.TIMER)
                GitHubScraper.TIMER = time.time()

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

            if GitHubScraper.TIMING:
                print("GITHUBSCRAPER: Time to get useful links from links:", time.time() - GitHubScraper.TIMER)

            absLinks = GitHubScraper.getAbsolute(url, links)
            counter = counter + 1

        return list(set(sourceFiles))

    @staticmethod
    def getContentFromGitHubFileURLs(fileUrlTuples):
        """
        Downloads the raw files from GitHub file URLs. Unknown behaviour is URLs are not GitHub file URLs
        :param fileUrlTuples: a list of tuples of file names and absolute URLs within the GitHub repo. Get this from getFileURLSFromGitHubRepo
        :return: a list of tuples of file names, file URLs, contents of those files, but NOT actual files. Each tuple in the list is formatted ("name", "url", "content")
        """

        urls = [i[1] for i in fileUrlTuples]
        pageLinks = [GitHubScraper.getAbsoluteLinksFromPage(i) for i in urls]  # convert relative URLs to absolute URLs
        rawLinks = [[j for j in i if "raw" in j] for i in pageLinks]    # Filter out only URLs that have "raw" in them, because these URLs lead to pages with the content of the file
        rawLinks = [i for rawLinksSub in rawLinks for i in rawLinksSub]  # Flatten a list of lists into a list
        content = [GitHubScraper.getContent(i) for i in rawLinks]   # Get the content of the page (file)
        returnList = []
        # Creates the list of ("file name", "file URL", "file content") tuples
        for i,j in zip(fileUrlTuples, content):
            returnList.append((i[0], i[1], j))

        # Change DEBUG variable to true to get more info
        if GitHubScraper.DEBUG:
            print(fileUrlTuples)
            print("urls:", urls)
            print("pagelinks:", pageLinks)
            print("rawLinks: ", rawLinks)
            for i in content:
                print(i)
            print("return value ", returnList)

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
    # fileUrlTuples = GitHubScraper.getFileURLSFromGitHubRepo("https://github.com/DecomPy/valid_and_compilable_1")
    # print("filename/URL pairs: ", fileUrlTuples)
    # fileContentTuples = GitHubScraper.getContentFromGitHubFileURLs(fileUrlTuples)
    # print("filename/content pairs: ", fileContentTuples)
    # GitHubScraper.fileContentIntoStorage(fileContentTuples)
    # GitHubScraper.downloadAllFiles("https://github.com/DecomPy/valid_and_compilable_1")
    GitHubScraper.downloadAllFiles("https://github.com/hexagon5un/AVR-Programming/tree/master/Chapter06_Digital-Input")

