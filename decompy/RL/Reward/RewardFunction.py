from decompy.RL.Model import Model
# TODO: decide which things need to be static.


class RewardFunction:
    """
    Step 5: Takes the current state (state after modification), the old state (state before modification) and goal state
    and determines if the action leads to an improved state. Then it updates the Model with the Decision.
    """

    model = Model(None)  # TODO: get decision history?

    def __init__(self):
        """
        Initializes the class.
        """
        pass

    def create_reward(self, current_llvm, old_llvm, optimal_llvm):
        """
        Takes the current state (modified state), the old state (before modifications), optimal_llvm and determines
        if the action leads to an improved state by creating a new reward. It then updates the model with the Decision.
        :param current_llvm: the current state after modifications
        :type: str
        :param old_llvm: the old state before modifications
        :type: str
        :param optimal_llvm: the optimal LLVM
        :type: str
        :return: nothing
        """
        pass

