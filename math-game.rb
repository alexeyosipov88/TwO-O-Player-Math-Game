class Question
  def initialize
    @number1 = 1 + rand(20)
    @number2 = 1 + rand(20)
  end
  
  def ask_question
    "What does #{@number1} plus #{@number2} equal?"
  end

  def correct_answer
    @number1 + @number2
  end

end

question1 = Question.new
puts question1