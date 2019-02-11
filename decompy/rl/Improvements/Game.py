from decompy.rl.Improvements.Player import Player


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


class Game:
    def __init__(self, width=3, height=3, consecutive_equals=3):
        self.width = width
        self.height = height
        self.consecutive_equals = consecutive_equals

    def play(self, player1=Player('player1'), player2=Player('player2')):
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
                # self.set_score()
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
