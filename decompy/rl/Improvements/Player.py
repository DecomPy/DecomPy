class Player:
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

    def get_available_moves(self, board):
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
        self.score = {'Win': 0, 'Loss': 0, 'Draw': 0}