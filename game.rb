require "./players"
require "./questions"

class Game

  def initialize
    puts "Welcome to Math Game! This game requires 2 players."
    puts "Enter player1 name"
    player1_name = gets.chomp
    @player1 = Player.new(player1_name)
    puts "Enter player2 name"
    player2_name = gets.chomp
    @player2 = Player.new(player2_name)
    @turn_number = 1
    
  end



  def play_game
    while @player1.lives > 0 && @player2.lives > 0
      qs = Question.new
      if @turn_number % 2 != 0
        puts "#{@player1.name}, #{qs.display_question}"
        print "> "
        @player1.lose_life unless qs.correct?
      else 
        puts "#{@player2.name}, #{qs.display_question}"
        print "> "
        @player2.lose_life unless qs.correct?
      end
      puts "#{@player1.name} #{@player1.lives}/3, #{@player2.name} #{@player2.lives}/3"
      @turn_number += 1
    end

    unless @player1.lives == 0 
      puts "#{@player1.name} wins"
    else 
      puts "#{@player2.name} wins"
    end
    
  end

end
