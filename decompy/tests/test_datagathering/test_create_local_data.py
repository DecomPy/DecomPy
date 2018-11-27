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
        cld = CreateLocalData()
        cld.stage1()
        print("stage 1 done")
        cld.stage2()
        print("stage 2 done")
        cld.stage3()
        print("stage 3 done")
        cld.stage4()
        print("stage 4 done")

