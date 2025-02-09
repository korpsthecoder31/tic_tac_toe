class Board
  def initialize
    @A1 = " "
    @A2 = " "
    @A3 = " "
    @B1 = " "
    @B2 = " "
    @B3 = " "
    @C1 = " "
    @C2 = " "
    @C3 = " "
  end

  def display_board
    puts "Current Board:"
    puts "| #{@A1} | #{@A2} | #{@A3} |"
    puts "| #{@B1} | #{@B2} | #{@B3} |"
    puts "| #{@C1} | #{@C2} | #{@C3} |"
  end

  def update_board(tile, symbol)
    case tile
    when "1"
      @A1 = symbol
    when "2"
      @A2 = symbol
    when "3"
      @A3 = symbol
    when "4"
      @B1 = symbol
    when "5"
      @B2 = symbol
    when "6"
      @B3 = symbol
    when "7"
      @C1 = symbol
    when "8"
      @C2 = symbol
    when "9"
      @C3 = symbol
    end
  end
end