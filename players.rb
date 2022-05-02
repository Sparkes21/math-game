class Player
  attr_accessor :lives, :name
  
  def initialize(name, lives = 3)
    @lives = lives
    @name = name
  end
  
  def lose_life
    @lives -= 1
  end
end
