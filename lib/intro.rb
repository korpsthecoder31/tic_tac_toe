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
    print "Player Choice: "
    ready = gets.chomp
    if ready == "Y"
      ready_to_play
    else 
      puts "*********************************************************************************************"
      puts "I guess not. See you next time. Goodbye!"
      exit
    end  
  end

  def ready_to_play
    puts "*********************************************************************************************"
    puts "LET'S PLAY!"
  end

end