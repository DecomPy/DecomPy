# TODO: import statements


class Driver:
    """
    Step 1 of the Reinforcement Learning. The driver receives the LLVM during the call from
    "pass_optimized_llvm_and_get_back_unoptimized_llvm" and generates a summary of that state.
    """

    def __init__(self, pass_counter=0, old_state=None, new_state=None):
        """
        Initializes the driver with default values if none are found.
        :param pass_counter:
        :type: int
        :param old_state:
        :type: string
        :param new_state:
        :type: string
        """
        self.pass_counter = pass_counter
        self.old_state = old_state
        self.new_state = new_state
        pass

    def pass_optimized_llvm_and_get_back_unoptimized_llvm(self, llvm_unop):
        """
        The driver receives optimized LLVM and generates unoptimized, or more readable, LLVM.
        :param llvm_unop: the unoptimized llvm
        :type: string
        """
        pass

