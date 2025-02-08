class Board
  attr_reader
  def initialize
    @A1 = "test"
    @A2 = ""
    @A3 = ""
    @B1 = ""
    @B2 = ""
    @B3 = ""
    @C1 = ""
    @C2 = ""
    @C3 = ""
  end

  def display_board
    puts "#{@A1}"
  end
end