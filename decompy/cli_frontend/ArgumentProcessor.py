from decompy.cli_frontend import LifterSubprocess
from decompy.cli_frontend import OutputFormatter
from decompy.RL.Driver import Driver
import argparse


class ArgumentProcessor:
    """
    The overall CLI (or in this case the ArgumentProcessor) decompiles and raises the input
    to a string, then passes it to the driver, which is located in the RL. Once the RL has
    finished, the driver returns a more readable format of the code.
    """

    def __init__(self, args):
        """
        initializes the argument processor to process either a folder or a file.
        :param args:
        """
        self.args = args
        pass

    def batch_process(self, in_training, folder):
        """
        Batch processes the folder to get the readable decompiled file from each folder.
        If in_training is set to True, then the folder is used as training the RL agent.
        :param in_training: whether to use this as training or for decompiling.
        :param folder: the folder location
        :return:
        """
        pass

    def single_process(self, in_training, file):
        """
        Processes the file to get the readable decompiled file.
        If in_training is set to True, then the file is used for training the RL agent.
        :param in_training: whether to use this as training or for decompiling.
        :param file: the file location
        :return:
        """
        pass

