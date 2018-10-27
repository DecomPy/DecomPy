from travis_examples import nptest as nt
import numpy as np


# init basic tests
def test_start():
    """
    Tests the initialization of the Py class by comparing it to another numpy array.
    """
    a = nt.Py()
    test = np.array([[1, 2, 3], [4, 5, 6]]) # it is important to have the double brackets
    assert a.array.all() == test.all()


# zeroed out the array
def test_zeroes():
    """
    Tests the Py class by zeroing out the array and comparing it to a numpy array.
    """
    a = nt.Py()
    a.zeroed()
    assert a.array.all() == np.zeros((2, 2)).all()




