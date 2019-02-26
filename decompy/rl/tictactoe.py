# This code is property of JochemWubs
# https://github.com/JochemWubs

def ll_as_string(list_of_lists, no_characters=3):
    return '\n'.join(''.join(str(value).center(no_characters) for value in row) for row in list_of_lists)

def ll_add_coordinates(list_of_lists, start_at_value=0):
    # Create first row with column header
    header = ['r/c']
    for y in range(len(list_of_lists[0])):
        header.append(y)

    # Add first column with row indicators
    for x in range(len(list_of_lists)):
        list_of_lists[x].insert(0, x)

    # Add first row with column header
    list_of_lists.insert(0, header)

    return list_of_lists


import random

class player:
    def __init__(self, name='human_player'):
        self.human = True
        self.name = name
        self.sign = ''
        self.reset_score()

    def send_player_move(self, board, consecutive_equals):
        while True:
            user_input = input('Player %s(%s) please give input '
                               '(row, column), for example: "1, 2" ...\n'
                               % (self.name,
                                  self.sign))
            try:
                move = tuple(int(i) for i in str(user_input).split(','))
            except:
                 print('Illegal input; please try again...')
                 continue
            if not self.legal_move(move, board):
                print('Illegal move; please try again...')
                continue
            else:
                break
        return move

    def receive_environment_update(self, board, game_status):
        pass

    def legal_move(self, move, board):
        bool_legal = False
        if move in self.get_available_moves(board):
            bool_legal = True
        return bool_legal

    def get_available_moves(self,board):
        available_moves = []
        for move in self.get_legal_moves(board):
            if self.free_space(move, board):
                available_moves.append(move)
        return available_moves

    def get_legal_moves(self, board):
        possible_moves = []
        for x in range(len(board)):
            for y in range(len(board[0])):
                move = (x, y)
                possible_moves.append(move)
        return possible_moves

    def free_space(self, move, board):
        x, y = move
        bool_free = False
        if board[x][y] == '.':
            bool_free = True
        return bool_free

    def other_player_sign(self):
        return 'O' if self.sign == 'X' else 'X'

    def update_score(self, game_status):
        if game_status == 'Draw':
            self.score['Draw'] += 1
        if game_status == self.sign:
            self.score['Win'] += 1
        if game_status == self.other_player_sign():
            self.score['Loss'] += 1

    def reset_score(self):
        self.score = {'Win':0, 'Loss':0, 'Draw':0}


class random_player(player):
    def __init__(self, name='random_player'):
        super(random_player, self).__init__(name)
        self.human = False

    def send_player_move(self, board, consecutive_equals):
        available_moves = self.get_available_moves(board)
        random_move = available_moves[random.randint(0, len(available_moves)-1)]
        return random_move

    def receive_environment_update(self, board, game_status):
        pass

class win_block_player(player):
    def __init__(self, name='win_block_player'):
        super(win_block_player, self).__init__(name)
        self.human = False

    def send_player_move(self, board, consecutive_equals):
        available_moves = self.get_available_moves(board)
        for move in available_moves:
            if self.winning_move(move, board, self.sign, consecutive_equals):
                return move
        for move in available_moves:
            if self.winning_move(move, board, self.other_player_sign(), consecutive_equals):
                return move
        move = available_moves[random.randint(0, len(available_moves)-1)]
        return move

    def receive_environment_update(self, board, game_status):
        pass

    def winning_move(self, move, board, sign, consecutive_equals):
        bool_winning = False
        directions = [(1, 0), (0, 1), (1, 1), (1, -1)]
        legal_moves = self.get_legal_moves(board)
        for direction in directions:
            rx, ry = direction
            count_consecutive_equals = 1
            for delta in (1, -1):
                x, y = move
                rx *= delta
                ry *= delta
                x += rx
                y += ry
                while (x, y) in legal_moves:
                    if board[x][y] == sign:
                        count_consecutive_equals += 1
                    else:
                        break
                    if count_consecutive_equals == consecutive_equals:
                        bool_winning = True
                    x += rx
                    y += ry
        return bool_winning


class monte_carlo_player(player):
    def __init__(self, name='monte_carlo_player', reward_move=0, reward_draw=0,
                 reward_win=1, reward_loss=-1, gamma=0.9, policy='egreedy',
                 egreedy=0.2, alpha=999):
        super(monte_carlo_player, self).__init__(name)
        self.human = False

        self.reward_move = reward_move
        self.reward_draw = reward_draw
        self.reward_win = reward_win
        self.reward_loss = reward_loss

        self.mcl = monte_carlo_learning(gamma=gamma, policy=policy,
                                        egreedy=egreedy,alpha=alpha)

    def send_player_move(self, board, consecutive_equals):
        state_descriptor = self.get_state_descriptor(board)
        move = self.mcl.get_action(state_descriptor)
        return move

    def receive_environment_update(self, board, game_status):
        self.send_input_from_environment_to_mcl(board, game_status)

    def send_input_from_environment_to_mcl(self, board, game_status):
        #TODO: eventually change descriptor to vector of state features
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

#TODO: model episodes and states in a different way, add values to single object? maybe create state and mdp class?

class state_obj:
    '''Object contains all state related information'''
    def __init__(self, features, available_actions, action_values, visit_count):
        self.features = features
        self.available_actions = available_actions
        self.action_values = action_values
        self.visit_count = visit_count

    def __eq__(self, other):
        """Override the default Equals behavior"""
        if isinstance(other, self.__class__):
            return self.features == other.features
        elif self.features == other:
            return True
        return NotImplemented

    def __ne__(self, other):
        """Define a non-equality test"""
        if isinstance(other, self.__class__):
            return not self.__eq__(other)
        return NotImplemented


class monte_carlo_learning:
    def __init__(self, gamma=0.9, policy='egreedy', egreedy=0.2, alpha=999):
        self.gamma = gamma
        self.policy = policy
        self.egreedy = egreedy
        self.alpha = alpha

        # MCL updates state values by multiplying the difference
        # between the estimated state value and the observed total discounted
        # reward with:
        # - alpha if divide_by_n = False
        # - 1/n if divide_by_n = True
        self.divide_by_n = True if alpha == 999 else False

        # State list contains instances of state_obj class
        self.state_list = []
        # Episode list contains lists:
        # [state_features, action, total disc. reward]
        self.episode_list = []

        self.random = 0
        self.greedy = 0


    def receive_input_from_environment(self, state_features, available_actions, reward, terminal):
        '''state is a set of features that describe the state, can be a single
        value, but it can also be a vector of features'''
        # Reward == 'None' means that the update from the environment is the
        # start of the game and no action has yet been made.
        if not reward == 'None':
            self.update_episode_tdr(reward)

        if terminal: # end of episode
            self.update_state_action_values()
            self.episode_list = []
        else:
            self.update_state_information(state_features, available_actions)

    def update_state_information(self, state_features, available_actions):
        if not state_features in self.state_list:
            action_values = [0 for action in available_actions]
            visit_count = [0 for action in available_actions]
            state = state_obj(state_features, available_actions, action_values, visit_count)
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

        #TODO: replace these state_index lookups by functions
        state_index = self.state_list.index(state_features)
        state = self.state_list[state_index]

        action_index = state.available_actions.index(action)
        state.visit_count[action_index] += 1

        return action

    def get_greedy_policy_action(self, state_features):
        action_list = self.get_greedy_action_list(state_features)
        if len(action_list) > 1:
            action = action_list[random.randint(0, len(action_list)-1)]
        else:
            action = action_list[0]
        return action

    def get_greedy_action_list(self, state_features):
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
        state_index = self.state_list.index(state_features)
        state = self.state_list[state_index]

        action_list = state.available_actions
        action = action_list[random.randint(0, len(action_list)-1)]
        return action

    def get_egreedy_policy_action(self, state_features):
        probability = random.uniform(0, 1)
        if probability <= self.egreedy:
            action = self.get_random_policy_action(state_features)
            self.random += 1
        else:
            action = self.get_greedy_policy_action(state_features)
            self.greedy += 1
        return action

#    def get_state(self, state_features):
#        state_index = self.state_list.index(state_features)
#        state = self.state_list[state_index]

    def viewable_state_list(self):
        viewable_list = [state.features for state in self.state_list]
        return viewable_list

    def viewable_action_list(self, state_features):
        state_index = self.state_list.index(state_features)
        state = self.state_list[state_index]

        viewable_list = zip(state.available_actions, state.action_values,
                            state.visit_count)
        return viewable_list

class tictactoe:
    def __init__(self, width=3, height=3, consecutive_equals=3):
        self.width = width
        self.height = height
        self.consecutive_equals = consecutive_equals

    def play(self,player1=player('player1'),player2=player('player2')):
        self.playerX = player1
        self.playerX.sign = 'X'
        self.playerO = player2
        self.playerO.sign = 'O'

        self.active_player = self.playerX
        self.inactive_player = self.playerO

    def new_game(self):
        game_status = 'Inactive'
        self.reset_board()
        self.send_environment_update(game_status)

        game_status = 'Active'
        while game_status == 'Active':
            self.print_board()

            move = self.get_player_move(self.board, self.consecutive_equals)
            self.set_move(move)

            game_status = self.get_game_status(move)

            self.send_environment_update(game_status)

            if not game_status == 'Active':
                #self.set_score()
                self.inactive_player.update_score(game_status)
                self.active_player.update_score(game_status)
                self.change_active_player()
                self.print_end(game_status)
                break

            self.change_active_player()

    def reset_board(self):
        self.board = [['.' for y in range(self.width)] for x in range(self.height)]

    def print_board(self):
        if self.player_is_human():
            import copy
            board = copy.deepcopy(self.board)

            # Define number of characters to be printed per cell
            no_characters = 3

            # Add pre-row and header with row/column cooardinates
            board_headers = ll_add_coordinates(board)

            # Convert list of lists to printable string
            printable_string = ll_as_string(board_headers, no_characters)
            print(printable_string)

    def set_move(self, move):
        x, y = move
        self.board[x][y] = self.active_player.sign

    def change_active_player(self):
        if self.active_player.sign == 'X':
            self.active_player = self.playerO
            self.inactive_player = self.playerX
        else:
            self.active_player = self.playerX
            self.inactive_player = self.playerO

    def check_winner(self, coordinate):
        bool_winner = False
        directions = [(1, 0), (0, 1), (1, 1), (1, -1)]
        for direction in directions:
            rx, ry = direction
            consecutive_equals = 1
            for delta in (1, -1):
                x, y = coordinate
                rx *= delta
                ry *= delta
                x += rx
                y += ry
                while self.valid_move((x, y)):
                    if self.board[x][y] == self.active_player.sign:
                        consecutive_equals += 1
                    else:
                        break
                    if consecutive_equals == self.consecutive_equals:
                        bool_winner = True
                    x += rx
                    y += ry
        return bool_winner

    def valid_move(self, coordinate):
        x, y = coordinate
        bool_legal = True
        if x < 0 or x >= self.height:
            bool_legal = False
        elif y < 0 or y >= self.width:
            bool_legal = False
        return bool_legal

    def check_draw(self):
        bool_draw = False
        if not any((char == '.') for char in ll_as_string(self.board)):
            bool_draw = True
        return bool_draw

    def get_game_status(self, move):
        game_status = 'Active'
        if self.check_winner(move):
            game_status = self.active_player.sign
        elif self.check_draw():
            game_status = 'Draw'
        return game_status

    def get_player_move(self, board, consecutive_equals):
        move = self.active_player.send_player_move(board, consecutive_equals)
        return move

    def send_environment_update(self, game_status):
        '''you send an update tot the inactive player, because he needs to
        observe the move of the other player, unless the game starts or ends,
        then to both players + status update'''
        if game_status == 'Active':
            self.inactive_player.receive_environment_update(self.board, game_status)
        else:
            self.inactive_player.receive_environment_update(self.board, game_status)
            self.active_player.receive_environment_update(self.board, game_status)

    def print_end(self, game_status):
        if self.player_is_human():
            self.print_board()
            if game_status == 'X' or game_status == 'O':
                print('Player %s(%s) has won the game!' % (self.active_player.name,
                                                           self.active_player.sign))
            elif game_status == 'Draw':
                print('Draw...!')

    def player_is_human(self):
        bool_human = False
        if self.playerX.human or self.playerO.human:
            bool_human = True
        return bool_human


def game_loop(game, player1, player2, n):
    player1.reset_score()
    player2.reset_score()

    game.play(player1, player2)

    for n in range(n):
        game.new_game()
        if n%1000 == 0:
            print('Round: %s' % n)

    print("State list:", len(player1.mcl.state_list))
    print('%s score:' % player1.name)
    print(player1.score)


ttt = tictactoe(width=3, height=3, consecutive_equals=3)
mcp_greedy = monte_carlo_player(name='mcp_greedy', policy='greedy')
mcp_egreedy = monte_carlo_player(name='mcp_egreedy', policy='egreedy')
game_loop(ttt, mcp_egreedy, mcp_greedy, 10000)
