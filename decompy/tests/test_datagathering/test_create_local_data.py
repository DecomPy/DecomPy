from decompy.DataGathering.CreateLocalData import CreateLocalData
import unittest
import shutil
import os

database_name = "c_source_test_delete_me"


class CreateLocalDataTest(unittest.TestCase):
    """
    tests the CreateLocalDataTest class
    """
    def setUp(self):
        """
        initializes the test cases for CreateLocalDataTest
        :return:
        """
        self.cld = CreateLocalData(folder="RemoveRepositories", dest_folder="RemoveRepositoresFiltered", database_name=database_name)

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
                    # tests if path is found
                    self.assertTrue(os.path.exists(json_path))
                    break

    # test cases rely on the existing database
    def tearDown(self):
        os.remove(database_name+".db")
        shutil.rmtree(self.cld.folder)
        # shutil.rmtree(self.cld.dest_folder)


if __name__ == '__main__':
    unittest.main()


