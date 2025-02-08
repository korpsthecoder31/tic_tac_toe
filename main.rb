require_relative 'lib/intro'
require_relative 'lib/game'

def play_game
  game = Game.new
  game.start
end 

play_game