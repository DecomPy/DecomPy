import unittest
from WebNavigator import WebNavigator


class test_GitHubNavigator(unittest.TestCase):

    def test_repo_vc_1(self):  # vc stands for valid and compilable
        """
        Tests if GitHubNavigator can find all the files in a repository
        :return: nothing
        """
        self.assertTrue(
            WebNavigator.getFileURLSFromGitHubRepo("https://github.com/DecomPy/valid_and_compilable_1")[0] in
            {('main.c', 'https://github.com/DecomPy/valid_and_compilable_1/blob/master/main.c'), (
                'main2.c', 'https://github.com/DecomPy/valid_and_compilable_1/blob/master/subfolder/main2.c')})

        self.assertTrue(
            WebNavigator.getFileURLSFromGitHubRepo("https://github.com/DecomPy/valid_and_compilable_1")[1] in
            {('main.c', 'https://github.com/DecomPy/valid_and_compilable_1/blob/master/main.c'), (
                'main2.c', 'https://github.com/DecomPy/valid_and_compilable_1/blob/master/subfolder/main2.c')})


if __name__ == '__main__':
    tf.test.main()
