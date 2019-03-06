from decompy.RL.Action import PastAction
from decompy.RL.ActionGenerator import ActionGenerator


# TODO: decide if I should be extending, then override the method or not? The class diagram shows the same method.
class OptimizationLister(ActionGenerator.ActionGenerator):
    """
    Step 2.1 The OptimizationLister generates a list of optimization based actions.
    """

    def __init__(self):
        super(ActionGenerator, self).__init__()
        pass

    def list_optimizations_actions(self, llvm_unop):
        """
        The driver calls the ActionGenerator to get a list of possible actions for the current
        LLVM state it received in step 1.
        :param llvm_unop: the unoptimized llvm
        :type: string
        :return: list of actions
        :rtype: list<Action>
        """
        pass

