import os
import time
import unittest
from GitHubScraper import GitHubScraper
import shutil


class test_GitHubScraper(unittest.TestCase):

    def test_repo_vc_1_fileURL(self):
        """
        Tests if GitHubNavigator can find all the file URLs in a valid repository
        :return: nothing
        """
        self.assertTrue(
            GitHubScraper.getFileURLSFromGitHubRepo("https://github.com/DecomPy/valid_and_compilable_1")[0] in
            {('main.c', 'https://github.com/DecomPy/valid_and_compilable_1/blob/master/main.c'), (
                'main2.c', 'https://github.com/DecomPy/valid_and_compilable_1/blob/master/subfolder/main2.c')})

        self.assertTrue(
            GitHubScraper.getFileURLSFromGitHubRepo("https://github.com/DecomPy/valid_and_compilable_1")[1] in
            {('main.c', 'https://github.com/DecomPy/valid_and_compilable_1/blob/master/main.c'), (
                'main2.c', 'https://github.com/DecomPy/valid_and_compilable_1/blob/master/subfolder/main2.c')})

    def test_repo_iu_1_fileURL(self):
        """
        Tests if GitHubNavigator filters out all the non-C URLs within a repo
        :return: nothing
        """

        # These repos should have no C files, and therefore should not produce any URLs
        self.assertTrue(len(GitHubScraper.getFileURLSFromGitHubRepo("https://github.com/DecomPy/invalid_and_uncompilable_1")) == 0)
        self.assertTrue(len(GitHubScraper.getFileURLSFromGitHubRepo("https://github.com/DecomPy/invalid_and_uncompilable_1")) == 0)

    def test_repo_vc_1_download_config_META_update(self):
        """
        Tests if the config.META download time timestamp is approximately correct when updating
        :return: nothing
        """

        passed = False

        GitHubScraper.downloadAllFiles("https://github.com/DecomPy/valid_and_compilable_1")
        time.sleep(5)

        with open(os.path.join("DecomPy_valid_and_compilable_1\\config.META"),
                  "r") as f:
            line = f.readline()
            while line:
                if "File download timestamp: " in line:
                    fileMin = line.split(" ")[-2].split(":")[-2]
                    year, month, day, hour, minute = time.strftime("%Y,%m,%d,%H,%M").split(",")
                    minute = int(minute)
                    fileMin = int(fileMin)
                    self.assertTrue(fileMin == minute or fileMin == ((minute + 1) % 60) or fileMin == ((minute - 1) % 60))
                    passed = True
                line = f.readline()
        self.assertTrue(passed)

        # Makes sure the directory is always clean
        shutil.rmtree("DecomPy_valid_and_compilable_1")

    def test_repo_vc_1_download_config_META_append(self):
        """
        Tests if the config.META download time timestamp is approximately correct when appending
        :return: nothing
        """

        passed = False

        if not os.path.exists("Decompy_valid_and_compilable_1"):
            os.mkdir("DecomPy_valid_and_compilable_1")
        with open(os.path.join("DecomPy_valid_and_compilable_1\\config.META"), "w") as f:
            f.write("Text to be appended upon\n")

        GitHubScraper.downloadAllFiles("https://github.com/DecomPy/valid_and_compilable_1")
        time.sleep(5)

        with open(os.path.join("DecomPy_valid_and_compilable_1\\config.META"),
                  "r") as f:
            line = f.readline()
            while line:
                if "File download timestamp: " in line:
                    fileMin = line.split(" ")[-2].split(":")[-2]
                    year, month, day, hour, minute = time.strftime("%Y,%m,%d,%H,%M").split(",")
                    minute = int(minute)
                    fileMin = int(fileMin)
                    self.assertTrue(fileMin == minute or fileMin == ((minute + 1) % 60) or fileMin == ((minute - 1) % 60))
                    passed = True
                line = f.readline()
        self.assertTrue(passed)

        # Makes sure the directory is always clean
        if os.path.exists("DecomPy_valid_and_compilable_1"):
            shutil.rmtree("DecomPy_valid_and_compilable_1")

    def test_repo_iu_1_doesnt_download(self):
        """
        Tests that a repository that is not supposed to be downloaded are not downloaded
        :return: nothing
        """

        GitHubScraper.downloadAllFiles("https://github.com/DecomPy/invalid_and_uncompilable_1")
        self.assertTrue(not os.path.exists("Decompy_invalid_and_uncompilable_1"))
        if os.path.exists("Decompy_invalid_and_uncompilable_1"):
            shutil.rmtree("Decompy_invalid_and_uncompilable_1")

    def test_repo_vc_1_does_download(self):
        """
        Tests that a repository with valid files are downloaded
        :return: nothing
        """

        GitHubScraper.downloadAllFiles("https://github.com/DecomPy/valid_and_compilable_1")
        self.assertTrue(os.path.isfile("DecomPy_valid_and_compilable_1/main.c"))
        self.assertTrue(os.path.isfile("DecomPy_valid_and_compilable_1/main2.c"))

        # Makes sure the directory is always clean
        if os.path.exists("DecomPy_valid_and_compilable_1"):
            shutil.rmtree("DecomPy_valid_and_compilable_1")

if __name__ == '__main__':
    unittest.main()