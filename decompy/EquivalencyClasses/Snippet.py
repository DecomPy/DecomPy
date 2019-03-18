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
