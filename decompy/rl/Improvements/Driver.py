from decompy.rl.Improvements.MonteCarloPlayer import MonteCarloPlayer
from decompy.rl.Improvements.RandomPlayer import RandomPlayer
from decompy.rl.Improvements.Game import Game

def game_loop(game, player1, player2, n):
    player1.reset_score()
    player2.reset_score()

    game.play(player1, player2)

    for n in range(n):
        game.new_game()
        if n % 1000 == 0:
            print('Round: %s' % n)

    print("State list:", len(player1.mcl.state_list))
    print('%s score:' % player1.name)
    print(player1.score)


ttt = Game(width=3, height=3, consecutive_equals=3)
random_player = RandomPlayer(name="random")
mcp_egreedy = MonteCarloPlayer(name='mcp_egreedy', policy='egreedy')
game_loop(ttt, mcp_egreedy, random_player, 10000)
