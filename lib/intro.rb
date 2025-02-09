require 'rubocop'

module Intro
  def intro_message
    puts "WELCOME TO TIC-TAC-TOE!"
    puts "A two player game created by M. Korps."
    puts "The rules are simple."
    puts "Players 1 and 2 takes turns adding O's and X's respectively."
    puts "They do that by entering numbers 1 through 9, each corresponding to a section of the board."
    puts "Numbers are assigned starting from the top row, going left to right, before moving on below."
    puts "Which means 1 is the upper left square, 5 is the middle square, 9 bottom left, etc."
    puts "Simple. Ready to play? [Enter 'Y' to play]"
    print ": "
    ready = gets.chomp
    if ready == "Y"
      get_player_credentials
    else 
      puts "*********************************************************************************************"
      puts "I guess not. See you next time. Goodbye!"
      exit
    end  
  end

  def get_player_credentials
    puts "*********************************************************************************************"
    puts "LET'S PLAY!"
    print "Player 1 enter your name: "
    name1 = gets.chomp
    @player1 = Player.new(name1, "O")
    puts "Hello, #{name1}!"
    print "Player 2 enter your name: "
    name2 = gets.chomp
    @player2 = Player.new(name2, "X")
    puts "Hey, #{name2}!"
    puts "*********************************************************************************************"
  end
end