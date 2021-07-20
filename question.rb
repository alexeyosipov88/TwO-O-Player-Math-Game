class Question
  def initialize
    @number1 = 1 + rand(20)
    @number2 = 1 + rand(20)
  end
  
  def ask_question(current_player)
    puts "#{current_player.name} What does #{@number1} plus #{@number2} equal?"
  end

  def correct_answer
    @number1 + @number2
  end

end
