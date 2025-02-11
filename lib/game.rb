require_relative 'board'
require_relative 'player'

class Game < Board
  include Intro

  def initialize
    super
    @player1 = nil
    @player2 = nil
    @current_player = nil
    @winner = false
  end
  
  def intro
    intro_message
  end

  def play_game
    @current_player = @player1
    loop do
      display_board
      get_player_choice
      break if @winner == true || @used_tiles.size == 9
      switch_player
    end
    puts "game over"
  end

  def get_player_choice
    print "#{@current_player.name}, please select a tile: "
    tile = gets.chomp
    update_board(tile, @current_player.symbol)
  end

  def check_winner
    winning_combinations = [[1, 2 ,3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
    winning_combinations.each { |combination| @winner = true if (combination - @current_player.tiles).empty?}
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def game_over
    display_board
    if @winner == true
      puts "Congratulations, #{@current_player.name}. You win!"
    else
      puts "Tie game! No more squares available."
    end
  end
end