# TODO: decide how to implement id (from database?)


class Snippet:
    """
    A snippet representation from the database.
    """

    def __init__(self, id, llvm, class_id):
        """
        the content of a snippet.
        :param id: the id of the snippet.
        :type: integer
        :param llvm: the llvm snippet
        :type: string
        :param class_id: id of class
        :type: integer
        """
        self.id = id
        self.llvm = llvm
        self.class_id = class_id
        pass

    def __eq__(self, other):
        """
        Determines the equality of this snippet when compared to another snippet
        :param other: the other snippet
        :type: Snippet
        :return: True or False based off of equality.
        :rtype: bool
        """
        pass

