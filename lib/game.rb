require_relative 'board'

class Game < Board
  include Intro

  def intro
    intro_message
  end
end