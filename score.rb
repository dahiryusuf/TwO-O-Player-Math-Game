class Scores
  attr_accessor :score
  def initialize
  @score = 3
  end

  def lost
    @score = @score - 1
    @score
  end
end
