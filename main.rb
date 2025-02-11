require_relative 'lib/intro'
require_relative 'lib/game'
require_relative 'lib/board'

def run_tic_tac_toe
  game = Game.new
  game.intro
  game.play_game
  replay_tic_tac_toe(game)
end

def replay_tic_tac_toe(game)
  puts "Would you like to play again? [Enter 'Y' to play again]"
  print ": "
  play_again = gets.chomp.upcase
  if play_again == "Y"
    game.clear_board
    game.play_game
    replay_tic_tac_toe(game)
  else
    puts "Thanks for playing. Goodbye."
  end
end 

run_tic_tac_toe