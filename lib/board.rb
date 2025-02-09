class Board
  attr_accessor

  def initialize
    @A1 = ""
    @A2 = "X"
    @A3 = "O"
    @B1 = "X"
    @B2 = "O"
    @B3 = "X"
    @C1 = "O"
    @C2 = "X"
    @C3 = "O"
  end

  def display_board
    puts "Current Board:"
    puts "| #{@A1} | #{@A2} | #{@A3} |"
    puts "| #{@B1} | #{@B2} | #{@B3} |"
    puts "| #{@C1} | #{@C2} | #{@C3} |"
  end
end