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
    def __update_meta(target_directory):
        """
        Updates the download time in the META file to the current time in target directory
        :param target_directory: Directory to update the META file
        :return: Nothing
        """

        # Don't do anything if there is no directory
        if not os.path.exists(target_directory):
            return

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
                    print("%s" % ("File download timestamp:" +
                                  datetime.datetime.today().strftime('%Y-%m-%d %H:%M:%S'))),
                    update_time_stamp = True
                else:
                    print("%s" % line),
            if not update_time_stamp:
                with open(os.path.join(target_directory, "config.META"), "a") as f:
                    f.write("File download timestamp:")
                    f.write(datetime.datetime.today().strftime('%Y-%m-%d %H:%M:%S'))

    @staticmethod
    def __file_content_into_storage(content_url_tuple, target_directory):
        """
        Writes the content of a string into a file given a list of tuples of file names and strings.
        :param content_url_tuple: list of tuples, with each tuple being ("fileName", "fileURL", "fileContent").
        :param target_directory: name of directory to download files into
        :return: True if successful, False otherwise
        """

        # print("Starting filing")

        # If the input list is empty, can't create folder
        if len(content_url_tuple) == 0:
            return False

        target_subdirectory = target_directory + "/Unfiltered"

        # Creates a directory for the repository if one does
        if not os.path.exists(target_directory):
            os.mkdir(target_directory)
        if not os.path.exists(target_subdirectory):
            os.mkdir(target_subdirectory)

        # Creates files with contents of repo files inside of directory.
        for i in content_url_tuple:
            split_addr = i[1].split('/')
            split_addr = split_addr[3:]
            new_file_name = ""
            for j in split_addr:
                if j == "raw" or j == "master":
                    continue
                new_file_name += j
                if split_addr[-1] == j:
                    break
                new_file_name += '_'
            try:
                with open(os.path.join(target_subdirectory, new_file_name), "w") as f:
                    try:
                        f.write(i[2])
                    except UnicodeEncodeError as e:
                        print("Error with", new_file_name, e)
                        return False
            except (FileNotFoundError, OSError) as e:
                print("Couldn't write file. Name was probably too long, or name is malformed", new_file_name, e)
                return False

        # print("Finishing filing")
        return True

    @staticmethod
    def __download_file(file_page_link):
        """
        Downloads a file and stores it for filing later
        :param file_page_link: Link to file to download.
        :return: Nothing
        """
        # print("Starting download")
        file_name = file_page_link.split("/")[-1]
        file_raw_link = [i for i in GitHubScraper.getAbsoluteLinksFromPage(file_page_link) if "raw" in i][0]
        page_source = ""
        try:
            response = urllib.request.urlopen(file_raw_link, timeout=10)
            try:
                page_source = response.read().decode(response.headers.get_content_charset())
            except (TypeError, UnicodeDecodeError) as e:
                print("Error with type or decoding, will not store file later:", file_raw_link, e)
                return
        except (urllib.error.HTTPError, urllib.error.URLError, TimeoutError) as e:
            print("URLLIB error", e)

        GitHubScraper.file_name_url_content_tuples.append((file_name, file_raw_link, page_source))
        # print("Finishing download")

    @staticmethod
    def __scrape_page_urls(url):
        """
        Scrapes all the links from a page, and filters them into links to subfolders and links to files
        :param url: page to scrape
        :return: Nothing
        """
        # print("Executing scrape")
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
        # print("Finishing scrape")

    @staticmethod
    def download_all_files(repo_urls, target_directories=None):
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

        # Attempt to generate a name for the target directory if there is not one already
        if target_directories is None and len(repo_urls) == 1:
            target_directories = [repo_urls[0].split("/")[3] + "_" + repo_urls[0].split("/")[4]]

        # Don't want to download files from multiple repos into one folder, do we?
        if len(repo_urls) != len(target_directories):
            print("Length of list of URLs must be either 1 or the same as the length of the list of target directories")
            return

        # Does the actual work. Iterates through repo URLs, and stores files from them to corresponding folder
        for repo_url, target_directory in list(zip(repo_urls, target_directories)):
            # Make default name of directory to be downloaded to "username_reponame"
            if target_directory is None:
                target_directory = repo_url.split("/")[3] + "_" + repo_url.split("/")[4]

            GitHubScraper.file_name_url_content_tuples = []
            GitHubScraper.subfolder_links = [repo_url]
            GitHubScraper.file_links = []

            confirm_loop = False
            futures_change_timeout = 20  # seconds
            time_of_last_futures_change = time.time()  # used for when things get stuck

            futures = []
            min_max_futures = 250
            with concurrent.futures.ThreadPoolExecutor() as executor:
                while True:
                    while len(GitHubScraper.subfolder_links) > 0 and (
                            len(futures) < len(GitHubScraper.subfolder_links) or len(futures) < min_max_futures):
                        # print("Appending scrape future")
                        print("len futures:", len(futures), "\tlen subfolder_links", len(GitHubScraper.subfolder_links),
                              "\tlen file_links", len(GitHubScraper.file_links), "\tlen file_name_url_content_tuples",
                              len(GitHubScraper.file_name_url_content_tuples))
                        futures.append(
                            executor.submit(GitHubScraper.__scrape_page_urls, GitHubScraper.subfolder_links.pop()))
                        time_of_last_futures_change = time.time()
                        confirm_loop = False
                    while len(GitHubScraper.file_links) > 0 and (
                            len(futures) < len(GitHubScraper.file_links) or len(futures) < min_max_futures):
                        # print("Appending download future")
                        print("len futures:", len(futures), "\tlen subfolder_links", len(GitHubScraper.subfolder_links),
                              "\tlen file_links", len(GitHubScraper.file_links), "\tlen file_name_url_content_tuples",
                              len(GitHubScraper.file_name_url_content_tuples))
                        futures.append(executor.submit(GitHubScraper.__download_file, GitHubScraper.file_links.pop()))
                        time_of_last_futures_change = time.time()
                        confirm_loop = False
                    while len(GitHubScraper.file_name_url_content_tuples) > 0:
                        # print("Appending file storage future")
                        print("len futures:", len(futures), "\tlen subfolder_links", len(GitHubScraper.subfolder_links),
                              "\tlen file_links", len(GitHubScraper.file_links), "\tlen file_name_url_content_tuples",
                              len(GitHubScraper.file_name_url_content_tuples))
                        futures.append(
                            executor.submit(
                                GitHubScraper.__file_content_into_storage(
                                    [GitHubScraper.file_name_url_content_tuples.pop()], target_directory)))
                        time_of_last_futures_change = time.time()
                    futures = [future for future in futures if not future.done()]

                    if time.time() - time_of_last_futures_change > futures_change_timeout:
                        # futures hasn't changed in 20 seconds, something went wrong. Cancel all remaining futures
                        input("Something got stuck. Press enter to continue...")

                    # Break out of loop when everything else is confirmed done. Also update META
                    if len(futures) == 0 and confirm_loop:
                        GitHubScraper.__update_meta(target_directory)
                        break
                    elif len(futures) == 0:
                        confirm_loop = True


if __name__ == "__main__":
    timer = time.time()
    # GitHubScraper.download_all_files("https://github.com/hexagon5un/AVR-Programming", "Medium sized repo")
    GitHubScraper.download_all_files("https://github.com/vim/vim")
    # GitHubScraper.download_all_files("https://github.com/hexagon5un/AVR-Programming")
    # GitHubScraper.download_all_files(["https://github.com/hexagon5un/AVR-Programming/tree/master/Chapter19_EEPROM"],
    #                                  "FolderA")
    # GitHubScraper.download_all_files(["https://github.com/hexagon5un/AVR-Programming/tree/master/Chapter19_EEPROM",
    #                          "https://github.com/hexagon5un/AVR-Programming/tree/master/Chapter06_Digital-Input"],
    #                         ["FolderA", "FolderB"])
    # GitHubScraper.download_all_files("https://github.com/hexagon5un/AVR-Programming/tree/master/Chapter19_EEPROM/vigenereCipher")
    # GitHubScraper.download_all_files("https://github.com/torvalds/linux", "Huge repo")
    print((time.time() - timer) / 60, "minutes")
