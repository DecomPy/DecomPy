import numpy as np


# modify 1 2-D array with numpy values to test out travis ci and numpy
class Py:
    def __init__(self):
        # 2-D array
        self.array = np.array([[1, 2, 3], [4, 5, 6]])

    def zeroed(self):
        self.array = np.zeros((2, 2))

    def get_arr(self):
        return self.array
