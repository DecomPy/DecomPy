import inspect

import decompy.RL.ActionGenerator.OptPassActions as OptPassActions

class OptimizationLister:
    """
    Step 2.1 The OptimizationLister generates a list of optimization based actions.
    """

    def __init__(self):
        self.passes = self._get_all_passes()

    @staticmethod
    def _get_all_passes():
        passes = []

        opt_pass_cls = inspect.getmembers(OptPassActions, inspect.isclass)
        retdec_pass_cls = []
        llvm_api_cls = []
        pass_cls = opt_pass_cls + retdec_pass_cls + llvm_api_cls
        for pass_action in pass_cls:
            passes.append(pass_action[1]())

        return passes

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


# test to see it if runs
if __name__ == "__main__":
    OptimizationLister()
