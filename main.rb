require_relative 'lib/intro'
require_relative 'lib/game'
require_relative 'lib/board'

def run_tic_tac_toe
  game = Game.new
  game.intro
  game.play_game
end 

run_tic_tac_toe