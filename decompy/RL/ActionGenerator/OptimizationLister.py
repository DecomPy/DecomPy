from decompy.RL.Action import PassAction


class OptimizationLister:
    """
    Step 2.1 The OptimizationLister generates a list of optimization based actions.
    """

    def __init__(self):
        pass

    @staticmethod
    def list_optimizations_actions(llvm_unop):
        """
        The driver calls the ActionGenerator to get a list of possible actions for the current
        LLVM state it received in step 1.
        :param llvm_unop: the unoptimized llvm
        :type: string
        :return: list of pass actions
        :rtype: list<PassAction>
        """
        return []

