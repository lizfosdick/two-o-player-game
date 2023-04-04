class Player
  attr_reader :lives, :name

  def initialize(name, current)
    @lives = 3
    @name = name
    @current = current
  end

  def decrease_lives
    @lives = @lives - 1
  end

end


# puts player1.lives
# player1.decrease_lives
# puts player1.lives
