require_relative 'lib/intro'

class Game
  include Intro

  def start
    intro_message
  end
end

game = Game.new
game.start