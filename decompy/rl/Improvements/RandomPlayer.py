import random

from decompy.rl.Improvements.Player import Player


class RandomPlayer(Player):
    def __init__(self, name='random_player'):
        super(RandomPlayer, self).__init__(name)
        self.human = False

    def send_player_move(self, board, consecutive_equals):
        available_moves = self.get_available_moves(board)
        random_move = available_moves[random.randint(0, len(available_moves) - 1)]
        return random_move

    def receive_environment_update(self, board, game_status):
        pass