class Player
  attr_accessor :name, :symbol, :tiles

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @tiles = []
  end
end