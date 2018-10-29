import unittest
from WebNavigator import WebNavigator

class testWebNavigator(unittest.TestCase):

    def test_repo_vc_1(self):
        self.assertEqual(WebNavigator.getFileURLSFromGitHubRepo("https://github.com/DecomPy/valid_and_compilable_1"),
                         [{'https://github.com/DecomPy/valid_and_compilable_1/blob/master/main.c', 'main.c'},
                          {'main2.c', 'https://github.com/DecomPy/valid_and_compilable_1/blob/master/subfolder/main2.c'},
                          {'main2.c', 'https://github.com/DecomPy/valid_and_compilable_1/blob/master/subfolder/main2.c'}])

if __name__ == '__main__':
    unittest.main()