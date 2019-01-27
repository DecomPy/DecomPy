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

from datetime import datetime
import os
import time
import requests
import zipfile
import io
import json


class FileGetter:
    """Handles the download of GitHub repositories and extracting the useful files"""

    def __init__(self):
        self.authenticated = False
        with open("../../config.json", 'r') as json_file:
            json_data = json.load(json_file)

            if json_data['github'] and json_data['github']['username'] and json_data['github']['password']:
                self.authenticated = True
                self.username = json_data['github']['username']
                self.password = json_data['github']['password']


    @staticmethod
    def __update_meta(target_directory):
        """
        Updates the download time and popualtes it with any necessary info in the json file to the current
        time in target directory.
        :param target_directory: Directory to update the json file
        :return: Nothing
        """

        # Don't do anything if there is no directory
        if not os.path.exists(target_directory):
            return

        file_path = target_directory + "/repo.json"
        try:
            # parse json if it's there
            with open(file_path, "r") as json_file:
                json_data = json.load(json_file)

            # new date
            json_data["master_download_date"] = datetime.datetime.today().strftime('%Y-%m-%d %H:%M')

            with open(file_path, "w") as jsonFile:
                json.dump(json_data, jsonFile)

        except Exception as e:
            print("File Not Found", e)


    @staticmethod
    def download_all_files(repo_urls, target_directories=None, username=None, password=None):
        """
        Handles the downloading of ZIP archives and extracting the appropriate files into the target directory.
        :param repo_urls: get the list of URLs to repositories. URLs must be to the top level of the repositories
        :type: str
        :param target_directories: File directory to store the files
        :type: str
        :param username: the github username.
        :type: str
        :param password: the github password.
        :type: str
        :return: Nothing
        """

        try:
            # Convert any input into a list. This is so that I only have to create a loop for lists later on
            if type(repo_urls) is str:
                repo_urls = [repo_urls]
            if type(target_directories) is str:
                target_directories = [target_directories]

            # Attempt to generate a name for the target directory if there is not one already
            if target_directories is None and len(repo_urls) == 1:
                target_directories = [repo_urls[0].split("/")[3] + "_" + repo_urls[0].split("/")[4]]
                print(target_directories[0])

            # Don't want to download files from multiple repos into one folder, do we?
            if len(repo_urls) != len(target_directories):
                print("Length of list of URLs must be either 1 or the same as the length of the list of target directories")
                return

            # Does the actual work. Iterates through repo URLs, and stores files from them to corresponding folder
            for repo_url, target_directory in list(zip(repo_urls, target_directories)):
                try:
                    target_subdirectory = target_directory + "/Unfiltered"

                    # Create the directories needed to make sure files have a place to be stored
                    if not os.path.exists(target_directory):
                        os.mkdir(target_directory)
                    if not os.path.exists(target_subdirectory):
                        os.mkdir(target_subdirectory)
                    # print(target_subdirectory) shows the folder

                    # Download the zip of the repository
                    if username is not None and password is not None:
                        response = requests.get(repo_url + "/archive/master.zip", auth=(username, password))
                    else:
                        response = requests.get(repo_url + "/archive/master.zip")

                    # test for 403
                    if response.status_code == 403:
                        # get time that we need to wait and wait for that time.
                        print("uh oh, rate limited!")

                        # wait their time if found
                        limit = response.headers
                        if "X-RateLimit-Reset" in limit:
                            wait = int(limit["X-RateLimit-Reset"]) - datetime.today().timestamp()

                            time.sleep(wait + 1)
                        else:
                            time.sleep(120)  # wait 2 minutes then try again.


                    # download zip
                    archive = zipfile.ZipFile(io.BytesIO(response.content))

                    # Save the appropriate files into target_subdirectory. Change file names so they are unique while being
                    # stored in the same directory
                    for i in archive.namelist():
                        if i.endswith(".c"):
                            with open(target_subdirectory + "/" + i.replace("/", "_"), "wb") as f:
                                f.write(archive.read(i))

                    FileGetter.__update_meta(target_directory)
                except Exception as e:
                    print("Zip files error", e)
                    pass
        except Exception as e:
            print("Download all files error", e)
            pass


if __name__ == "__main__":
    timer = time.time()
    # GitHubScraper.download_all_files("https://github.com/hexagon5un/AVR-Programming", "Medium sized repo")
    # FileGetter.download_all_files("https://github.com/vim/vim")
    # FileGetter.download_all_files(["https://github.com/DecomPy/valid_and_compilable_1",
    #                                "https://github.com/DecomPy/invalid_and_uncompilable_1"]
    #                               , ["A", "B"])
    FileGetter.download_all_files("https://github.com/hexagon5un/AVR-Programming")
    # GitHubScraper.download_all_files(["https://github.com/hexagon5un/AVR-Programming/tree/master/Chapter19_EEPROM"],
    #                                  "FolderA")
    # GitHubScraper.download_all_files("https://github.com/hexagon5un/AVR-Programming/tree/master/Chapter19_EEPROM/vigenereCipher")
    # GitHubScraper.download_all_files("https://github.com/torvalds/linux", "Huge repo")
    # FileGetter.download_all_files("https://github.com/torvalds/linux")
    print((time.time() - timer) / 60, "minutes")
