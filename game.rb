class Generate_questions
  def initialize
  @num1 = 0
  @num2 = 0
  end
  def question
  @num1 = rand(20)
  @num2 = rand(20)
  "what is #{@num1} + #{@num2}"
  end

  def answer
    answer = @num1 + @num2
    answer
  end
end

