from travis_examples import numpy_test as nt
import numpy as np


# init basic tests
def test_start():
    a = nt.Py()
    test = np.array([[1, 2, 3], [4, 5, 6]]) # it is important to have the double brackets
    assert a.array.all() == test.all()


# zeroed out the array
def test_zeroes():
    a = nt.Py()
    a.zeroed()
    assert a.array.all() == np.zeros((2, 2)).all()




