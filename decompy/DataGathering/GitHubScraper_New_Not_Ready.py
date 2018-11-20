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

import concurrent.futures
import datetime
import threading

from decompy.DataGathering.WebNavigator import WebNavigator
import os
import time
import fileinput
import urllib.request
import urllib.error
import urllib.parse


class GitHubScraper(WebNavigator):
    """Handles finding GitHub file URLs and downloading their contents"""

    file_name_url_content_tuples = []
    subfolder_links = []
    file_links = []

    @staticmethod
    def __get_file_urls_from_github_repo(url):
        """
        Function for multi-threaded web scraping. Called by getFileURLSFromGitHubRepo. Not recommended for outside use
        :param url: url of GitHub Repo or a folder within that repo
        :return: Nothing
        """

        if GitHubScraper.DEBUG:
            print("GITHUBSCRAPER: __get_file_urls_from_github_repo:", url)

        content = GitHubScraper.getContent(url)
        links = GitHubScraper.getLinks(content)
        links = list(filter(None, links))  # Deletes empty urls.

        # The following block removes links that don't need to be followed
        links_to_remove = []
        try:
            for link in links:
                if "blob" in link.split("/"):
                    continue
                if "master" in link.split("/"):
                    continue
                links_to_remove.append(link)
            for link in links_to_remove:
                links.remove(link)
        except Exception as e:
            print(e)

        abs_links = GitHubScraper.getAbsolute(url, set(links))
        for link in abs_links:
            for subURL in GitHubScraper.subURLs:
                if subURL in link:
                    if "#" in link.split("/")[-1]:  # filters URLs that are the same as other URLs
                        continue
                    if "commits" in link.split("/"):  # filters files that are not in main
                        continue
                    if "/blob/" in link:  # /blob/ is a marker for files
                        if link in GitHubScraper.sourceFilesLinks:
                            continue
                        if not link.split("/")[-1].endswith(".c"):
                            continue
                        if "master" in link.split("/"):  # This makes sure only URLs from master branch are saved
                            GitHubScraper.sourceFilesLinks.append((link.split("/")[-1], link))
                    else:
                        if link in GitHubScraper.subFolderLinks:
                            continue
                        if "master" in link.split("/"):
                            GitHubScraper.subFolderLinks.append(link)
                            GitHubScraper.subURLs.append("/" + link.split("/")[-1] + "/")

    @staticmethod
    def get_file_urls_from_github_repo(repo_url):
        """
        Finds and returns a list of the absolute URLs of all the files
        within the current master branch of a GitHub repository

        :param repo_url: absolute URL to a GitHub repo e.g. "https://github.com/DecomPy/valid_and_compilable_1"
        :return: a list of tuples of file names and absolute URLs within the GitHub repo
        """

        GitHubScraper.subURLs = ["/master/"]
        GitHubScraper.subFolderLinks = [repo_url]
        GitHubScraper.sourceFilesLinks = []
        GitHubScraper.scrapedURLs = []
        counter = 0
        thread_spawning_counter = 0

        while counter <= len(GitHubScraper.subFolderLinks):
            if GitHubScraper.DEBUG:
                thread_spawning_counter += 1
                print("GITHUBSCRAPER: getFileURLSFromGitHubRepo: Number of time threads are created:",
                      thread_spawning_counter)
            with concurrent.futures.ThreadPoolExecutor() as executor:
                futures = []
                while len(GitHubScraper.subFolderLinks) > 0:
                    next_url_to_scrape = GitHubScraper.subFolderLinks.pop()
                    if next_url_to_scrape in GitHubScraper.scrapedURLs:
                        continue
                    futures.append(executor.submit(GitHubScraper.__get_file_urls_from_github_repo, next_url_to_scrape))
                    GitHubScraper.scrapedURLs.append(next_url_to_scrape)
                    time.sleep(GitHubScraper.TIME_BETWEEN_THREAD_SPAWN)
                    futures = [future for future in futures if not future.done()]
                    if len(GitHubScraper.subFolderLinks) == 0:
                        concurrent.futures.wait(futures)
            counter += 1
            if counter >= len(GitHubScraper.subFolderLinks):
                break

        return list(set(GitHubScraper.sourceFilesLinks))

    @staticmethod
    def __get_content(link, index):
        """
        Retrieves the content from a link. This one is used with multi-threading

        :param link: An absolute URL
        :return: page content
        :return: str
        """

        if GitHubScraper.DEBUG:
            print("GITHUBSCRAPER: __get_content:", link)

        page_source = ""
        try:
            response = urllib.request.urlopen(link)
            try:
                page_source = response.read().decode(response.headers.get_content_charset())
            except (TypeError, UnicodeDecodeError) as e:
                print(e)
        except (urllib.error.HTTPError, urllib.error.URLError, TimeoutError) as e:
            print(e)
        GitHubScraper.pageContents[index] = page_source

    @staticmethod
    def __get_absolute_links_from_page(link):
        """
        Finds absolute URLs within a page. This function is used from getContentFromGitHubFileURLs via threading

        :param link: URL to page
        """
        content = WebNavigator.getContent(link)
        links = WebNavigator.getLinks(content)
        abs_links = WebNavigator.getAbsolute(link, links)
        for i in abs_links:
            GitHubScraper.pageLinks.append(i)

    @staticmethod
    def get_content_from_github_file_urls(file_url_tuples):
        """
        Downloads the raw files from GitHub file URLs. Unknown behaviour is URLs that are not GitHub file URLs
        :param file_url_tuples: a list of tuples of file names and absolute URLs within the GitHub repo.
        :return: list of tuples of file names, file URLs, contents of those files.
        """

        if GitHubScraper.DEBUG:
            print("GITHUBSCRAPER: getContentFromGitHubFileURLS: Getting urls from tuples")
        urls = [i[1] for i in file_url_tuples]
        if GitHubScraper.DEBUG:
            print("GITHUBSCRAPER: getContentFromGitHubFileURLS: urls:", urls)
            print("GITHUBSCRAPER: getContentFromGitHubFileURLS: Getting absolute URLS on page with the content we want")

        GitHubScraper.pageLinks = []  # Clear out list in case there are still things in it
        with concurrent.futures.ThreadPoolExecutor() as executor:
            for url in urls:
                if not url.split('/')[-1].endswith(".c"):  # This check happened before, but bad URLs seem to sneak in
                    continue
                executor.submit(GitHubScraper.__get_absolute_links_from_page, url)
                time.sleep(GitHubScraper.TIME_BETWEEN_THREAD_SPAWN)  # So Github server doesn't close connection

        if GitHubScraper.DEBUG:
            print("GITHUBSCRAPER: getContentFromGitHubFileURLS: Filtering URLS to get raw file URLS")
        raw_links = [i for i in list(GitHubScraper.pageLinks) if "raw" in i]

        if GitHubScraper.DEBUG:
            print("GITHUBSCRAPER: getContentFromGitHubFileURLS: Getting content")
        GitHubScraper.pageContents = [None] * len(raw_links)
        with concurrent.futures.ThreadPoolExecutor() as executor:
            for i in range(len(raw_links)):
                executor.submit(GitHubScraper.__get_content, raw_links[i], i)
                time.sleep(GitHubScraper.TIME_BETWEEN_THREAD_SPAWN)  # So Github server doesn't close connection

        content = GitHubScraper.pageContents
        return_list = []
        # Creates the list of ("file name", "file URL", "file content") tuples
        for i, j in zip(file_url_tuples, content):
            return_list.append((i[0], i[1], j))

        if GitHubScraper.DEBUG:
            print("urls:", urls)
            print("pagelinks:", GitHubScraper.pageLinks)
            print("raw_links: ", raw_links)

        return return_list

    @staticmethod
    def file_content_into_storage(content_url_tuple, target_directory=None, update_meta=False):
        """
        Writes the content of a string into a file given a list of tuples of file names and strings. Never multithread
        this function because it can cause multiple threads to write to the same META file unless you want to do a lot
        more work.
        :param content_url_tuple: list of tuples, with each tuple being ("fileName", "fileURL", "fileContent").
        :param target_directory: name of directory to download files into
        :return: True if successful, False otherwise
        """

        # If the input list is empty, can't create folder
        if len(content_url_tuple) == 0:
            return False

        # Make default name of directory to be downloaded to "username_reponame"
        if target_directory is None:
            target_directory = content_url_tuple[0][1].split("/")[3] + "_" + content_url_tuple[0][1].split("/")[4]
        target_subdirectory = target_directory + "/C_files"

        # Creates a directory for the repository if one does
        if not os.path.exists(target_directory):
            os.mkdir(target_directory)
        if not os.path.exists(target_subdirectory):
            os.mkdir(target_subdirectory)

        if update_meta:
            # Create config.META if it doesn't exist, place download timestamp there
            if not (os.path.isfile(target_directory + "config.META")):
                with open(os.path.join(target_directory, "config.META"), "w") as f:
                    f.write("File download timestamp: ")
                    f.write(datetime.datetime.today().strftime('%Y-%m-%d %H:%M:%S'))
            # Otherwise config.META does exist. Update the correct line
            else:
                update_time_stamp = False
                for line in fileinput.input((os.path.join(target_directory, "config.META")), inplace=True):
                    if "File download timestamp: " in line:
                        print("%s" % ("File download timestamp:" + time.asctime(time.localtime(time.time())))),
                        update_time_stamp = True
                    else:
                        print("%s" % line),
                if not update_time_stamp:
                    with open(os.path.join(target_directory, "config.META"), "a") as f:
                        f.write("File download timestamp:")
                        f.write(datetime.datetime.today().strftime('%Y-%m-%d %H:%M:%S'))

        # Creates files with contents of repo files inside of directory.
        for i in content_url_tuple:
            with open(os.path.join(target_subdirectory, i[0]), "w") as f:
                try:
                    f.write(i[2])
                except UnicodeEncodeError as e:
                    print(e)

        return True

    @staticmethod
    def __download_file(file_page_link):
        file_name = file_page_link.split("/")[-1]
        file_raw_link = [i for i in GitHubScraper.getAbsoluteLinksFromPage(file_page_link) if "raw" in i][0]

        page_source = ""
        try:
            response = urllib.request.urlopen(file_raw_link)
            try:
                page_source = response.read().decode(response.headers.get_content_charset())
            except (TypeError, UnicodeDecodeError) as e:
                print("Thread:", threading.get_ident(), ":", e)
        except (urllib.error.HTTPError, urllib.error.URLError, TimeoutError) as e:
            print("Thread:", threading.get_ident(), ":", e)

        GitHubScraper.file_name_url_content_tuples.append((file_name, file_raw_link, page_source))

    @staticmethod
    def __scrape_page_urls(url):
        all_links_on_page = list(GitHubScraper.getAbsoluteLinksFromPage(url))
        GitHubScraper.subfolder_links.extend([i for i in all_links_on_page
                                              if "/tree/master/" in i  # Make sure that it is looking at files in master
                                              if "#" not in i  # #'s are redundant links
                                              if url != i  # Don't save link to current url
                                              if len(url) < len(i)  # Don't save link to someplace with shorter URL,
                                              # since it's probably a parent URL
                                              ])
        GitHubScraper.file_links.extend([i for i in all_links_on_page
                                         if "/blob/master/" in i
                                         # Makes sure that it is looking at subfolders in master
                                         if i.endswith(".c")  # Makes sure that the files end with exactly .c
                                         ])

    @staticmethod
    def do_it_all(repo_urls, target_directories=None):
        """
        Downloads all the C files from a given GitHub repository URL into target directory. By default, the target
        directory will be named "username_reponame".
        :param repo_urls: str or list of str that are GitHub repo URLs. Can be URL to a subfolder within the repo, but
        will only download C files from that folder and its subfolders. If using a list, target_directories must be
        supplied with a list of target directory names, and that list must be the same length as the length of this
        parameter.
        :param target_directories: str or list of str. Name of folders the repository C files will be downloaded into.
        Must match the length of repo_urls if repo_urls is a list
        :return: nothing
        """

        # Convert any input into a list. This is so that I only have to create a loop for lists later on
        if type(repo_urls) is str:
            repo_urls = [repo_urls]
        if type(target_directories) is str:
            target_directories = [target_directories]

        # Don't want to download files from multiple repos into one folder, do we?
        if len(repo_urls) != len(target_directories):
            print("Length of list of URLs must be either 1 or the same as the length of the list of target directories")
            return

        # Does the actual work. Iterates through repo URLs, and stores files from them to corresponding folder
        for repo_url, target_directory in list(zip(repo_urls, target_directories)):
            GitHubScraper.file_name_url_content_tuples = []
            GitHubScraper.subfolder_links = [repo_url]
            GitHubScraper.file_links = []
            subfolderCounter = 0
            linkCounter = 0
            storeCounter = 0
            with concurrent.futures.ThreadPoolExecutor() as executor:
                tuple_to_file = None
                futures = []
                while True:
                    print("len of futures:", len(futures))
                    print("len of subfolder_links:", len(GitHubScraper.subfolder_links))
                    print("len of file_links:", len(GitHubScraper.file_links))
                    print("len of file_name_url_content_tuples:", len(GitHubScraper.file_name_url_content_tuples))
                    print()
                    while len(GitHubScraper.subfolder_links) > 0 and len(futures) < len(GitHubScraper.subfolder_links):
                        print("Submitting a page to be scraped", subfolderCounter)
                        subfolderCounter += 1
                        futures.append(executor.submit(GitHubScraper.__scrape_page_urls, GitHubScraper.subfolder_links.pop()))
                    while len(GitHubScraper.file_links) > 0 and len(futures) < len(GitHubScraper.file_links):
                        print("Submitting a file to be downloaded", linkCounter)
                        linkCounter += 1
                        futures.append(executor.submit(GitHubScraper.__download_file, GitHubScraper.file_links.pop()))
                    while len(GitHubScraper.file_name_url_content_tuples) > 0:
                        print("Submitting a file to be stored", storeCounter)
                        storeCounter += 1
                        tuple_to_file = GitHubScraper.file_name_url_content_tuples.pop()
                        futures.append(executor.submit(GitHubScraper.file_content_into_storage([tuple_to_file], target_directory)))
                    futures = [future for future in futures if not future.done()]
                    # Break out of loop if there are no files to store and no links to scrape and no files to download
                    if len(futures) == 0:
                        print("SDFDSFSDFSDF")
                        GitHubScraper.file_content_into_storage([tuple_to_file], target_directory, True)
                        break


if __name__ == "__main__":
    timer = time.time()
    # GitHubScraper.do_it_all("https://github.com/hexagon5un/AVR-Programming", "Medium sized repo")
    # GitHubScraper.do_it_all(["https://github.com/hexagon5un/AVR-Programming/tree/master/Chapter19_EEPROM"], "FolderA")
    # GitHubScraper.do_it_all(["https://github.com/hexagon5un/AVR-Programming/tree/master/Chapter19_EEPROM",
    #                          "https://github.com/hexagon5un/AVR-Programming/tree/master/Chapter06_Digital-Input"],
    #                         ["FolderA", "FolderB"])
    # GitHubScraper.do_it_all("https://github.com/hexagon5un/AVR-Programming/tree/master/Chapter19_EEPROM/vigenereCipher")
    GitHubScraper.do_it_all("https://github.com/torvalds/linux", "Huge repo")
    print((time.time() - timer) / 60, "minutes")
