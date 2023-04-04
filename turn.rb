class Turn
  attr_reader :random_integer1, :random_integer2, :question, :answer

  def initialize
    @random_integer1 = rand(1..20)
    @random_integer2 = rand(1..20)
    @question = "What does #{@random_integer1} + #{@random_integer2} equal?"
    @answer = @random_integer1 + @random_integer2

  end
end



