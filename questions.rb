class Question

  def initialize()
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def display_question 
    "What does #{@number1} plus #{@number2} equal?"
  end

  def correct?
    player_answer = gets.chomp.to_i
    if player_answer == @answer
      puts "You are correct!"
    else
      puts "Wrong answer."
    end
    player_answer == @answer
  end
    

end