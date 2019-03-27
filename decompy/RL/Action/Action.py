from abc import ABC, abstractmethod


class Action(ABC):
    """
    Step 2: The Driver calls the ActionGenerator to get a list of possible actions for the current
    llvm state it received in Step 1.
    Actions are also used for either an LLVM Optimization Pass or a Swap Action.
    """

    def __init__(self):
        """
        initiates an Action Object. In this case, it is an abstract object,
        but it is implemented by PassAction and SwapAction.
        """
        super().__init__()

    @abstractmethod
    def do_action(self, current_state):
        """
        Does an action (based on PassAction, SwapAction)
        """
        pass

