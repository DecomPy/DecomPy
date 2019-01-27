from decompy.DataGathering.CreateLocalData import CreateLocalData
import unittest
import os
import json


class CreateLocalDataTest(unittest.TestCase):
    """
    tests the CreateLocalDataTest class
    """
    def setUp(self):
        """
        initializes the test cases for CreateLocalDataTest
        :return:
        """
        self.cld = CreateLocalData("c_test_db")

    def test_stages(self):
        self.cld.stage1_gather_repo_meta("2013-04-11", 1, 2)
        self.cld.stage2_get_repos(True)
        self.cld.stage3_filter_files()
        self.cld.stage4_generate_llvm()
        self.cld.stage5_insert_database()

        for root, dirs, files in os.walk(self.cld.folder):
            if "Unfiltered" in dirs:
                # read json if it exists
                json_path = root + "/" + self.cld.save_json
                if os.path.isfile(json_path):
                    # load json and validate data
                    with open(json_path, "r") as json_file:
                        json_data = json.load(json_file)
                        print(json_data["filtered_files"])
                        self.assertTrue(len(json_data["filtered_files"]) == 0)
                    break

    def tearDown(self):
        os.remove("c_test_db.db")


if __name__ == '__main__':
    unittest.main()


