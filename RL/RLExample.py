# tutorial from https://github.com/omerbsezer/Reinforcement_learning_tutorial_with_demo/blob/master/gridWorldGame.py

class Grid:
    """
    our "environment", a grid.
    """

    def __init__(self, width, height, start):
        """
        initialize the environment with values
        :param width: the width of the grid.
        :param height: the height of the grid.
        :param start: the start array
        """

        # default values
        self.rewards = {(0, 3): 1, (1, 3): -1}
        self.actions = {
            (0, 0): ('D', 'R'),
            (0, 1): ('L', 'R'),
            (0, 2): ('L', 'D', 'R'),
            (1, 0): ('U', 'D'),
            (1, 2): ('U', 'D', 'R'),
            (2, 0): ('U', 'R'),
            (2, 1): ('L', 'R'),
            (2, 2): ('L', 'R', 'U'),
            (2, 3): ('L', 'U'),
        }

        self.width = width
        self.height = height
        self.i = start[0]
        self.j = start[1]

    def set(self, rewards, actions):
        """
        the set to train on
        :param rewards: should be a dict of: (i, j): r (row, col): reward
        :param actions: should be a dict of: (i, j): A (row, col): list of possible actions
        :return:
        """

        self.rewards = rewards
        self.actions = actions

    def set_state(self, s):
        """
        set the state back
        :param s: state
        :return:
        """
        self.i = s[0]
        self.j = s[1]

    def current_state(self):
        """
        projection of current state.
        :return:
        """
        return self.i, self.j

    def is_terminal(self, s):
        """
        whether s is in the possible actions.
        :param s:
        :return:
        """
        return s not in self.actions

    def move(self, action):
        """
        moves to the best option (sometimes it's random)
        Needs to check if it's a legal move first.
        :param action:
        :return:
        """
        # check if legal move first
        if action in self.actions[(self.i, self.j)]:
            if action == 'U':
                self.i -= 1
            elif action == 'D':
                self.i += 1
            elif action == 'R':
                self.j += 1
            elif action == 'L':
                self.j -= 1
        # return a reward (if any)
        return self.rewards.get((self.i, self.j), 0)

    def undo_move(self, action):
        """
        allow the option to undo a move, the opposite of what move does (opposite of U/D/L/R).
        :param action:
        :return:
        """
        if action == 'U':
            self.i += 1
        elif action == 'D':
            self.i -= 1
        elif action == 'R':
            self.j -= 1
        elif action == 'L':
            self.j += 1
        # raise an exception if we arrive somewhere we shouldn't be
        # should never happen (unless the RL has become too smart... :))
        assert (self.current_state() in self.all_states())

    def game_over(self):
        """
        is the game over? Can we do any actions?
        :return:
        """
        # returns true if game is over, else false
        # true if we are in a state where no actions are possible
        return (self.i, self.j) not in self.actions

    def all_states(self):
        """
        display all the states that have been trained.
        :return:
        """
        # possibly buggy but simple way to get all states
        # either a position that has possible next actions
        # or a position that yields a reward
        return set(self.actions.keys()) | set(self.rewards.keys())


def standard_grid():
    """
    define a grid that describes the reward for arriving at each state
        and possible actions at each state.
    The grid is as defined:
    X - can't go there.
    S - start position
    Number - reward at that state
    Example...
    .  .  .  1
    .  x  . -1
    s  .  .  .

    :return:
    """
    g = Grid(3, 4, (2, 0))
    rewards = {(0, 3): 1, (1, 3): -1}
    actions = {
        (0, 0): ('D', 'R'),
        (0, 1): ('L', 'R'),
        (0, 2): ('L', 'D', 'R'),
        (1, 0): ('U', 'D'),
        (1, 2): ('U', 'D', 'R'),
        (2, 0): ('U', 'R'),
        (2, 1): ('L', 'R'),
        (2, 2): ('L', 'R', 'U'),
        (2, 3): ('L', 'U'),
    }
    g.set(rewards, actions)
    return g


def negative_grid(step_cost=-0.1):
    """
    try to minimize the number of moves. This means we must penalize every move.
    :param step_cost: 
    :return: 
    """
    g = standard_grid()
    g.rewards.update({
        (0, 0): step_cost,
        (0, 1): step_cost,
        (0, 2): step_cost,
        (1, 0): step_cost,
        (1, 2): step_cost,
        (2, 0): step_cost,
        (2, 1): step_cost,
        (2, 2): step_cost,
        (2, 3): step_cost,
    })
    return g


def print_values(V, g):
    """
    print the values of a game.
    :param V: 
    :param g: 
    :return: 
    """
    for i in range(g.width):
        print("---------------------------")
        for j in range(g.height):
            v = V.get((i,j), 0)
            if v >= 0:
                print(" %.2f|" % v, end="")
            else:
                print("%.2f|" % v, end="") # -ve sign takes up an extra space
        print("")


def print_policy(P, g):
    """
    
    :param P: 
    :param g: 
    :return: 
    """
    for i in range(g.width):
        print("---------------------------")
        for j in range(g.height):
            a = P.get((i,j), ' ')
            print("  %s  |" % a, end="")
        print("")


if __name__ == "__main__":
    grid = Grid(3, 3, [0, 0])




