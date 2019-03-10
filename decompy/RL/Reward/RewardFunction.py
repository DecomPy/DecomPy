# TODO: import statements
# TODO: decide which things need to be static.
import ctypes
import pathlib

libreward_path = pathlib.PurePath.joinpath(pathlib.Path(__file__).resolve().parent, "libRewardFunction.so")
print(libreward_path)
libreward = ctypes.CDLL(str(libreward_path))


class RewardFunction:
    """
    Step 5: Takes the current state (state after modification), the old state (state before modification) and goal state
    and determines if the action leads to an improved state. Then it updates the Model with the Decision.
    """

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
        :return:
        """
        # TODO: Update the model instead of returning
        return RewardFunction.__wrap_llvm_reward_function(current_llvm, old_llvm, optimal_llvm)

    @staticmethod
    def __wrap_llvm_reward_function(original, changed, goal):
        original_charp = ctypes.create_string_buffer(str.encode(original))
        changed_charp = ctypes.create_string_buffer(str.encode(changed))
        goal_charp = ctypes.create_string_buffer(str.encode(goal))

        reward = libreward.calcReward(original_charp, changed_charp, goal_charp)
        return reward


if __name__ == "__main__":
    print(RewardFunction().create_reward("1", "2", "3"))
