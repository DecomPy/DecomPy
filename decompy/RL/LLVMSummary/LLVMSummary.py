# TODO: finish whatever is making this summary RED in the class diagram.


class LLVMSummary:
    """
    A summary of the LLVM
    """

    instcounts = None
    loops = None
    aa = None
    regions = None

    # TODO: finish this?
    def __init__(self, instcounts, loops, aa, regions):
        """
        Initializes the object.
        """
        self.instcounts = instcounts
        self.loops = loops
        self.aa = aa
        self.regions = regions
        pass

    def __str__(self):
        """
        String representation of the LLVM summary.
        :return: llvm
        :rtype: str
        """

    def __eq__(self, other):
        """
        compares two llvm summaries for their equality.
        :param other: the LLVMSummary
        :return: boolean based off equality.
        :rtype: bool
        """
        pass

    def __hash__(self):
        """
        creates a hash identification of the LLVM summary
        :return: hash int
        :rtype: int
        """
