# TODO: decide how to implement id (from database?)


class Snippet:
    """
    A snippet representation from the database.
    """

    def __init__(self, id, class_id, llvm):
        """
        the content of a snippet.
        :param id: the id of the snippet.
        :type: integer
        :param class_id: id of class
        :type: integer
        :param llvm: the llvm snippet
        :type: string
        """
        self.id = id
        self.class_id = class_id
        self.llvm = llvm
        pass

