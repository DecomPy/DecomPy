import datetime
import os
import unittest
from decompy.DataGathering.FileGetter import FileGetter
import shutil


class GitHubScraperTest(unittest.TestCase):

    def test_repo_vc_1_download_config_META_update(self):
        """
        Tests if the config.META download time timestamp is approximately correct when updating
        :return: nothing
        """

        FileGetter.download_all_files("https://github.com/DecomPy/valid_and_compilable_1")

        # For Windows
        if os.name == "nt":
            with open(os.path.join("DecomPy_valid_and_compilable_1\\config.META")) as f:
                passed = False
                line = f.readline()
                while line:
                    if "File download timestamp:" in line:
                        file_minute = line.split(":")[-2]
                        minute = datetime.datetime.today().strftime('%M')
                        minute = int(minute)
                        file_minute = int(file_minute)
                        self.assertTrue(file_minute == minute or file_minute == ((minute + 1) % 60)
                                        or file_minute == ((minute - 1) % 60))
                        passed = True
                    line = f.readline()
            self.assertTrue(passed)
        # For Linux machines
        else:
            with open(os.path.join("DecomPy_valid_and_compilable_1/config.META")) as f:
                passed = False
                line = f.readline()
                while line:
                    if "File download timestamp:" in line:
                        file_minute = line.split(":")[-2]
                        minute = datetime.datetime.today().strftime('%M')
                        minute = int(minute)
                        file_minute = int(file_minute)
                        self.assertTrue(file_minute == minute or file_minute == ((minute + 1) % 60)
                                        or file_minute == ((minute - 1) % 60))
                        passed = True
                    line = f.readline()
            self.assertTrue(passed)

        # Makes sure the directory is always clean
        if os.path.exists("DecomPy_valid_and_compilable_1"):
            shutil.rmtree("DecomPy_valid_and_compilable_1")

    def test_repo_vc_1_download_config_META_append(self):
        """
        Tests if the config.META download time timestamp is approximately correct when appending
        :return: nothing
        """

        if not os.path.exists("Decompy_valid_and_compilable_1"):
            os.mkdir("DecomPy_valid_and_compilable_1")
        with open(os.path.join("DecomPy_valid_and_compilable_1\\config.META"), "w") as f:
            f.write("Text to be appended upon")

        FileGetter.download_all_files("https://github.com/DecomPy/valid_and_compilable_1")

        # For Windows machines
        if os.name == "nt":
            with open(os.path.join("DecomPy_valid_and_compilable_1\\config.META")) as f:
                passed = False
                line = f.readline()
                while line:
                    if "File download timestamp:" in line:
                        file_minute = line.split(":")[-2]
                        minute = datetime.datetime.today().strftime('%M')
                        minute = int(minute)
                        file_minute = int(file_minute)
                        self.assertTrue(file_minute == minute or file_minute == ((minute + 1) % 60)
                                        or file_minute == ((minute - 1) % 60))
                        passed = True
                    line = f.readline()
            self.assertTrue(passed)
        # For Linux machines
        else:
            with open(os.path.join("DecomPy_valid_and_compilable_1/config.META")) as f:
                passed = False
                line = f.readline()
                while line:
                    if "File download timestamp:" in line:
                        file_minute = line.split(":")[-2]
                        minute = datetime.datetime.today().strftime('%M')
                        minute = int(minute)
                        file_minute = int(file_minute)
                        self.assertTrue(file_minute == minute or file_minute == ((minute + 1) % 60)
                                        or file_minute == ((minute - 1) % 60))
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
        FileGetter.download_all_files("https://github.com/DecomPy/invalid_and_uncompilable_1")
        self.assertTrue(len(next(os.walk("Decompy_invalid_and_uncompilable_1/Unfiltered"))[2]) == 0)
        if os.path.exists("Decompy_invalid_and_uncompilable_1"):
            shutil.rmtree("Decompy_invalid_and_uncompilable_1")

    def test_repo_vc_1_does_download(self):
        """
        Tests that a repository with valid files are downloaded
        :return: nothing
        """

        FileGetter.download_all_files("https://github.com/DecomPy/valid_and_compilable_1")
        file_count = 0
        for root, dirs, files in os.walk("Decompy_valid_and_compilable_1/Unfiltered"):
            for _ in files:
                file_count += 1
        self.assertTrue(file_count == 2)

        # Makes sure the directory is always clean
        if os.path.exists("DecomPy_valid_and_compilable_1"):
            shutil.rmtree("DecomPy_valid_and_compilable_1")

    def test_repo_vc_1_does_download_custom_directory(self):
        """
        Tests that a repository with valid files are downloaded into a specified directory
        :return: nothing
        """

        FileGetter.download_all_files("https://github.com/DecomPy/valid_and_compilable_1", "test_dir")
        file_count = 0
        for root, dirs, files in os.walk("test_dir/Unfiltered"):
            for _ in files:
                file_count += 1
        self.assertTrue(file_count == 2)

        # Makes sure the directory is always clean
        if os.path.exists("test_dir"):
            shutil.rmtree("test_dir")

    def test_UTF_in_file_name(self):
        """
        Tests that getting files that have UTF characters doesn't crash the program
        :return:
        """

        # This will cause a problem if unable to handle UTF characters like 解
        FileGetter.download_all_files("https://github.com/swiftchao/mzzopublic")

        # Clean up directory
        if os.path.exists("swiftchao_mzzopublic"):
            shutil.rmtree("swiftchao_mzzopublic")

    @classmethod
    def setUp(cls):
        """
        Clean up directory before running any test
        :return:
        """

        if os.path.exists("DecomPy_valid_and_compilable_1"):
            shutil.rmtree("DecomPy_valid_and_compilable_1")

    @classmethod
    def tearDown(cls):
        """
        Cleans up directory after running all tests
        :return: nothing
        """
        if os.path.exists("DecomPy_valid_and_compilable_1"):
            shutil.rmtree("DecomPy_valid_and_compilable_1")
        if os.path.exists("DecomPy_invalid_and_uncompilable_1"):
            shutil.rmtree("DecomPy_invalid_and_uncompilable_1")
        if os.path.isfile("DecomPy_valid_and_compilable_1config.META"):  # For when running test from linux system
            os.remove("DecomPy_valid_and_compilable_1config.META")


if __name__ == '__main__':
    unittest.main()
