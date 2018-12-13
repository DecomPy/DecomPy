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

import datetime
import os
import time
import fileinput
import requests
import zipfile
import io


class FileGetter:
    """Handles the download of GitHub repositories and extracting the useful files"""

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
    def download_all_files(repo_urls, target_directories=None):
        """
        Handles the downloading of ZIP archives and extracting the appropriate files into the target directory.
        :param repo_urls: list of URLs to repositories. URLs must be to the top level of the repositories
        :param target_directories: File directory to store the files
        :return: Nothing
        """

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
            target_subdirectory = target_directory + "/Unfiltered"

            # Create the directories needed to make sure files have a place to be stored
            if not os.path.exists(target_directory):
                os.mkdir(target_directory)
            if not os.path.exists(target_subdirectory):
                os.mkdir(target_subdirectory)

            # Download the zip of the repository
            response = requests.get(repo_url + "/archive/master.zip")
            archive = zipfile.ZipFile(io.BytesIO(response.content))

            # Save the appropriate files into target_subdirectory. Change file names so they are unique while being
            # stored in the same directory
            for i in archive.namelist():
                if i.endswith(".c"):
                    with open(target_subdirectory + "/" + i.replace("/", "_"), "wb") as f:
                        f.write(archive.read(i))

            FileGetter.__update_meta(target_directory)


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
