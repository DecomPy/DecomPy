from decompy.cli_frontend import LifterSubprocess


class OutputFormatter:
    """
    OutputFormatter takes in the content that has been manipulated (decompiled, RL model worked on)
    and outputs it to either the console or file.
    """

    @staticmethod
    def write_output(content, location):
        """
        writes the content of the new manipulated data (readable?) to the location.
        :param content: the decompiled, readable content
        :param location: the location to store
        :return:
        """
        pass

    @staticmethod
    def __write_to_file(content, location):
        """
        writes the content to a file.
        :param content: the content to write
        :param location: the location to write to
        :return:
        """
        pass

    @staticmethod
    def __write_to_console(content):
        """
        writes the content to the console.
        :param content:
        :return:
        """
        pass
