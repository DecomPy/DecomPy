import unittest
from decompy.DataGathering.RepoStructure import RepoStructure
from pathlib import Path, PurePath
import shutil
import json


class TestRepoStructure(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        cls.rs = RepoStructure()

        with open(Path(__file__).parent.joinpath("filteredOfflineResults.json"), "r") as json_file:
            cls.rs.json_file = json.load(json_file)

        # read into our filtered repos
        cls.rs.batch_format(cls.rs.json_file, "2018-11-08 16:02:43.266002")

    @classmethod
    def tearDownClass(cls):
        shutil.rmtree(cls.rs.root)

    def test_folder_and_file_generation(self):
        repositories = Path("Repositories")
        repos = [item.name for item in repositories.iterdir() if item.is_dir()]

        self.assertEqual(set(repos), {'danking-sad-c', 'smillingrainbow-ProjetAlgoC', 'tenfar-android_bootable_recovery_cn', 'aquila-dev-CINK_KING_JB_KERNEL'})

    def test_meta_file_contents(self):
        meta_files = [config.open().read() for config in Path(self.rs.root).glob("*/repo.json")]

        def correct_meta(file):
            j = json.loads(file)
            self.assertTrue({"url", "name", "author", "filter_date"}.issubset(set(j.keys())))

        for file in meta_files:
            correct_meta(file)
