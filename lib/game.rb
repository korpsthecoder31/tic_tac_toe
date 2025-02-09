require_relative 'board'
require_relative 'player'

class Game < Board
  include Intro

  def initialize
    super
    @player1 = nil
    @player2 = nil
    @current_player = nil
  end
  
  def intro
    intro_message
    @current_player = @player1
  end

  def play_game
    loop do
      display_board
      get_player_choice
    end
  end

  def get_player_choice
    print "#{@current_player.name}, please select a tile: "
    tile = gets.chomp
    update_board(tile, @current_player.symbol)
  end
end