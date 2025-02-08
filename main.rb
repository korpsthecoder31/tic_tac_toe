require_relative 'lib/intro'
require_relative 'lib/game'

def run_tic_tac_toe
  game = Game.new
  game.intro
end 

run_tic_tac_toe