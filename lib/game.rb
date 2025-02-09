require_relative 'board'

class Game < Board
  include Intro

  def initialize
    super
  end
  
  def intro
    intro_message
  end
end