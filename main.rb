require './game'
require './score'
require './questions'

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