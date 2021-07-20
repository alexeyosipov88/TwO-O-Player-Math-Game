require './question.rb'
require './player.rb'

$player1 = Player.new("Player 1")
$player2 = Player.new("Player 2")
$current_player = $player1
$game_status = 'ongoing'

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
    response = gets.chomp.to_i
    check_the_response(response, question, $current_player)
    print_score 
    check_score
    puts "---- NEXT TURN -----"
  end

  print_results 
