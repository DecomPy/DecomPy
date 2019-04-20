from decompy.RL.Action.Action import Action
from decompy.EquivalencyClasses.Tokenizers.Tokenizer import Tokenizer


class SwapAction(Action):
    """
    Data Structure for an Action, particularly when a swap is performed.
    """

    def __init__(self, llvm, starting_token, ending_token):
        """
        :param snippet The snippet that was located
        :param starting_token The location of the snippet
        :type: int
        """
        super(SwapAction, self).__init__()
        self.llvm = llvm
        self.starting_token = starting_token
        self.ending_token = ending_token

    def __str__(self):
        return "[Swap starting index: %d, ending index: %d]" % (self.starting_token,
                                                                self.ending_token)

    def do_action(self, current_state):
        """
        an action performed based off swap action.
        :return: the new llvm state after applying the action
        """
        module_tokens = Tokenizer.tokenize(current_state, False)
        snippet_tokens = Tokenizer.tokenize(self.llvm, True)
        new_state_tokens = module_tokens[:self.starting_token] + \
               snippet_tokens + \
               module_tokens[self.ending_token:]
        return Tokenizer.reassemble(new_state_tokens)


# test to see it if runs
if __name__ == "__main__":
    pa = SwapAction("This wasn't here before...", 8, 15)
    new_state = pa.do_action("%1 = alloca i32, align 4\n%2 = alloca i32, align 4\n%3 = alloca i32, align 4")
    print(new_state)