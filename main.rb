require './game'
require './score'

class New_game
  
  def initialize
    @player_1 = Scores.new()
    @player_2 = Scores.new()
    @question = Generate_questions.new()
  end
  def player1
    puts "Player 1: #{@question.question}"
    choice = gets.chomp.to_i
    if choice != @question.answer
      @player_1.lost
      puts "Player 1: Seriously! No!"
    else
      puts "Player 1: Yay! you got it"
    end
  end
  def player2
    puts "Player 2: #{@question.question}"
    choice = gets.chomp.to_i
    if choice != @question.answer
      @player_2.lost
      puts "Player 2: Seriously! No!"
    else
      puts "Player 2: Yay! you got it"
    end
  end
  def gameover
    if @player_1.score == 0 || @player_2.score == 0
      return false
    else
      return true
    end
  end
  def score
    puts "P1: #{@player_1.score}/3 P2: #{@player_2.score}/3"
  end
  def winner
    if @player_1.score == 0
      return "Player 2 wins with a score of #{@player_2.score}/3"
    elseif @player_2.score == 0 
    return "Player 1 wins with a score of #{@player_1.score}/3"
    end
  end  
end


class Play_game
  
  def initialize
    @game = New_game.new()
  end
    def start
    while(@game.gameover)
      @game.player1
      @game.score
      if !@game.gameover
        break
      end
      puts "-----NEW TURN-----"
      @game.player2
      @game.score
    end
    puts @game.winner
    puts "------GAME OVER------"
    puts "GOODBYE"
  end

end


new_game = Play_game.new()
new_game.start