import numpy as np


# modify 1 2-D array with numpy values to test out travis ci and numpy
class Py:
    """
    Py
    =============

    This class provides very minimal functions of numpy
    for testing with travisCI and OOP with pytest.
    """
    def __init__(self):
        """
        init

        Initialize the Py class by populating a numpy 2-D array.
        """
        self.array = np.array([[1, 2, 3], [4, 5, 6]])

    def zeroed(self):
        """
        Zeroes the numpy array and stores that into the Py array object.
        """
        self.array = np.zeros((2, 2))
