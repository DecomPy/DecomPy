import random

from decompy.rl.Improvements.Player import Player
from decompy.rl.Improvements.StateObj import StateObj


class MonteCarloLearning:
    def __init__(self, gamma=0.9, policy='egreedy', egreedy=0.1, alpha=999):
        """
        This function simply initializes the values for the learning object.
        The author has some rather awful code such as using alpha=999 as a
        sentinel value for a different, non alpha based behaviour (avoiding
        repeats by dividing the likelihood of visiting by the number of times
        it has already been visited
        """
        self.gamma = gamma
        self.policy = policy
        self.egreedy = egreedy
        self.alpha = alpha
        self.divide_by_n = True if alpha == 999 else False
        self.state_list = []
        self.episode_list = []

        self.random = 0
        self.greedy = 0

    def receive_input_from_environment(self, state_features, available_actions, reward, terminal):
        if not reward == 'None':
            self.update_episode_tdr(reward)

        if terminal:  # end of episode
            self.update_state_action_values()
            self.episode_list = []
        else:
            self.update_state_information(state_features, available_actions)

    def update_state_information(self, state_features, available_actions):
        if not state_features in self.state_list:
            action_values = [0 for action in available_actions]
            visit_count = [0 for action in available_actions]
            state = StateObj(state_features, available_actions, action_values, visit_count)
            self.state_list.append(state)

    def update_episode_tdr(self, reward):
        episode_length = len(self.episode_list)
        for time in range(episode_length):
            exponent = episode_length - 1 - time
            self.episode_list[time][2] += self.gamma ** exponent * reward

    def update_state_action_values(self):
        for ep_state, ep_action, ep_value in self.episode_list:
            state_index = self.state_list.index(ep_state)
            state = self.state_list[state_index]

            action_index = state.available_actions.index(ep_action)
            action_value = state.action_values[action_index]
            visit_count = state.visit_count[action_index]

            if self.divide_by_n:
                action_value += (1 / visit_count) * ep_value
            else:
                action_value += self.alpha * ep_value

            state.action_values[action_index] = action_value

    def get_action(self, state_features):
        if self.policy == 'greedy':
            action = self.get_greedy_policy_action(state_features)
        if self.policy == 'random':
            action = self.get_random_policy_action(state_features)
        if self.policy == 'egreedy':
            action = self.get_egreedy_policy_action(state_features)

        self.episode_list.append([state_features, action, 0])
        state_index = self.state_list.index(state_features)
        state = self.state_list[state_index]

        action_index = state.available_actions.index(action)
        state.visit_count[action_index] += 1

        return action

    def get_greedy_policy_action(self, state_features):
        """
        Choose the best action based on precomputed results
        """
        action_list = self.get_greedy_action_list(state_features)
        if len(action_list) > 1:
            action = action_list[random.randint(0, len(action_list) - 1)]
        else:
            action = action_list[0]
        return action

    def get_greedy_action_list(self, state_features):
        """
        Helper greedy function
        """
        highest_value = float('-inf')
        greedy_action = []

        state_index = self.state_list.index(state_features)
        state = self.state_list[state_index]

        for action, value in zip(state.available_actions, state.action_values):
            if value > highest_value:
                greedy_action = []
                greedy_action.append(action)
                highest_value = value
            elif value == highest_value:
                greedy_action.append(action)
        return greedy_action

    def get_random_policy_action(self, state_features):
        """
        This is rather boring. Choose a random action and update values.
        """
        state_index = self.state_list.index(state_features)
        state = self.state_list[state_index]

        action_list = state.available_actions
        action = action_list[random.randint(0, len(action_list) - 1)]
        return action

    def get_egreedy_policy_action(self, state_features):
        """
        This is likely the most interesting section of the code. It uses an epsilon
        value randomly choose when to randomly do something versus doing learned behaviour.
        Essentially, the ML agent sometimes throws out common sense to try something new.
        This is useful as it will see new things to learn that it wouldn't try otherwise.
        """
        probability = random.uniform(0, 1)
        if probability <= self.egreedy:
            action = self.get_random_policy_action(state_features)
            self.random += 1
        else:
            action = self.get_greedy_policy_action(state_features)
            self.greedy += 1
        return action

    def viewable_state_list(self):
        viewable_list = [state.features for state in self.state_list]
        return viewable_list

    def viewable_action_list(self, state_features):
        state_index = self.state_list.index(state_features)
        state = self.state_list[state_index]

        viewable_list = zip(state.available_actions, state.action_values,
                            state.visit_count)
        return viewable_list


class MonteCarloPlayer(Player):
    def __init__(self, name='monte_carlo_player', reward_move=0, reward_draw=0,
                 reward_win=1, reward_loss=-1, gamma=0.9, policy='egreedy',
                 egreedy=0.2, alpha=999):
        super(MonteCarloPlayer, self).__init__(name)
        self.human = False

        self.reward_move = reward_move
        self.reward_draw = reward_draw
        self.reward_win = reward_win
        self.reward_loss = reward_loss

        self.mcl = MonteCarloLearning(gamma=gamma, policy=policy,
                                      egreedy=egreedy, alpha=alpha)

    def send_player_move(self, board, consecutive_equals):
        state_descriptor = self.get_state_descriptor(board)
        move = self.mcl.get_action(state_descriptor)
        return move

    def receive_environment_update(self, board, game_status):
        self.send_input_from_environment_to_mcl(board, game_status)

    def send_input_from_environment_to_mcl(self, board, game_status):
        state_descriptor = self.get_state_descriptor(board)
        reward = self.get_reward(game_status)
        terminal = self.get_terminal(game_status)
        available_actions = self.get_available_moves(board)
        self.mcl.receive_input_from_environment(state_descriptor,
                                                available_actions,
                                                reward,
                                                terminal)

    def get_state_descriptor(self, board):
        state_descriptor = ''.join(''.join(str(sign) for sign in row) for row in board)
        return state_descriptor

    def get_terminal(self, game_status):
        bool_terminal = False
        if game_status == 'X' or game_status == 'O':
            bool_terminal = True
        return bool_terminal

    def get_reward(self, game_status):
        reward = 0
        if game_status == 'Inactive':
            reward = 'None'
        if game_status == 'Active':
            reward = 0
        if game_status == 'Draw':
            reward = 0.5
        if game_status == self.sign:
            reward = 1
        if game_status == self.other_player_sign():
            reward = -1
        return reward

    def change_policy(self, policy, egreedy='None'):
        self.mcl.policy = policy
        if not egreedy == 'None':
            self.mcl.egreedy = egreedy
