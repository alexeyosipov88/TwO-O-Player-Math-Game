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

# question1 = Question.new
# p question1
# p question1.correct_answer


class Player
  attr_accessor :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def name
    @name
  end

end

# player1 = Player.new
# p player1.score
# p player1.score -= 1

$player1 = Player.new("Player 1")
$player2 = Player.new("Player 2")
$current_player = $player1
$game_status = 'ongoing'
# current_player
$turn = 0

  def check_score
    if $player1.score == 0 || $player2.score == 0
      $game_status = 'stop'
    end
  end

  def print_score 
    puts "P1: #{$player1.score} / 3 vs P2: #{$player2.score} / 3" 
  end

  def switchPlayer
    if $turn % 2 == 0
      $current_player = $player1
    else 
      $current_player = $player2
    end
    $turn += 1
  end
  
  def check_the_response(response, question, player)
    if response != question.correct_answer
      puts "#{player.name}: Seriously? No!"
      player.score -= 1
    else 
      puts "#{player.name} Yes! You are correct"
    end
  end

  def print_results 
    winner = $player1.score >= 1 ? $player1 : $player2
    puts "#{winner.name} wins with a score #{winner.score} / 3
    --- GAME OVER ---
         Good bye!"
  end

  while ($game_status == 'ongoing') do
    switchPlayer
    question = Question.new
    question.ask_question($current_player)
    response = gets.to_i
    check_the_response(response, question, $current_player)
    print_score 
    check_score
    puts "---- NEXT TURN -----"
  end

  print_results 

  

