from decompy.EquivalencyClasses.Snippet import Snippet


class SnippetRepository:
    """
    A repository design pattern of snippets.
    """

    def __init__(self):
        pass

    def get_snippets(self):
        """
        Gets the list of snippets
        this is only a sample for now!!!
        :return: snippets
        :rtype: list<Snippets>
        """

        snip = Snippet(0, "alloca i32, align 4", 0)

        snip1 = Snippet(1, "alloca i32, align 5", 0)

        snip2 = Snippet(2, "alloca i32, align 6", 1)

        snip3 = Snippet(3, "alloca i32, align 7", 0)

        return [snip, snip1, snip2, snip3]

