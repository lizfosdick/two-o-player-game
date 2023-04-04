require './player'
require './turn'

class Game

  def initialize
    puts "---START GAME---"
    @player1 = Player.new("Player1", true)
    @player2 = Player.new("Player2", false)
    @current = @player1
    @other = @player2
  end

  def newTurn
      @new_question = Turn.new
      puts "It's #{@current.name}'s turn!"
      puts "#{@current.name}: #{@new_question.question}"
      answer = @new_question.answer
      input = gets.chomp
          if input.to_i == answer
            puts "Correct! Well done. "
        else 
          puts "WRONG!"
          @current.decrease_lives
          puts "#{@current.name}'s score is: #{@current.lives}/3"
          
    end
      if @current.lives == 0
         puts "#{@current.name} loses"
         puts "#{@other.name} WINS! Their score was #{@other.lives}/3"
      else
        @current == @player1 ? @current = @player2 : @current = @player1
        @other == @player1 ? @other = @player2 : @other = @player1
        newTurn
      end
    
    end
end