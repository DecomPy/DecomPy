from decompy.DataGathering.CreateLocalData import CreateLocalData
import unittest


class CreateLocalDataTest(unittest.TestCase):
    """
    tests the CreateLocalDataTest class
    """
    def setUp(self):
        """
        initializes the test cases for CreateLocalDataTest
        :return:
        """
        self.cld = CreateLocalData()

    def test_stage1(self):
        self.cld.stage1()
        print("stage 1 done")
        self.cld.stage2()
        print("stage 2 done")
        self.cld.stage3()
        print("stage 3 done")
        self.cld.stage4()
        print("stage 4 done")
        self.assertTrue(False)

