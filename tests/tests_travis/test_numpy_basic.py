import unittest
import numpy as np
from travis_examples import nptest as nt


class TestNumPy(unittest.TestCase):
    def setUp(self):
        """
        sets up the numpy testing array
        """
        self.a = nt.Py()

    def test_2D_array(self):
        """
        Tests the initialization of the Py class by comparing it to another numpy array.
        """
        a = nt.Py()
        test = np.array([[1, 2, 3], [4, 5, 6]])  # it is important to have the double brackets
        self.assertEqual(a.array.all(), test.all())

    # zeroed out the array
    def test_zeroes(self):
        """
        Tests the Py class by zeroing out the array and comparing it to a numpy array.
        """
        self.a.zeroed()
        self.assertEqual(self.a.array.all(), np.zeros((2, 2)).all())
