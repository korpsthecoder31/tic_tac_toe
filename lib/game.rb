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
    game_over
  end

  def get_player_choice
    print "#{@current_player.name}, please select a square: "
    tile = gets.chomp.to_i
    if @used_tiles.include?(tile)
      puts "Square has already been selected. Please try again."
      get_player_choice
    else
      @used_tiles << tile
      @current_player.tiles << tile
      update_board(tile, @current_player.symbol)
    end
    check_winner
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

  def clear_board
    @A1 = " "
    @A2 = " "
    @A3 = " "
    @B1 = " "
    @B2 = " "
    @B3 = " "
    @C1 = " "
    @C2 = " "
    @C3 = " "
    @used_tiles = []
    @player1.tiles = []
    @player2.tiles = []
    @winner = false
  end
end