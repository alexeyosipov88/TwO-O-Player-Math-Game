# Question 
  initialize question with
	  random @number1
    random @number2
  
  ask question with @1 and @2
  multiply with @1 and @2 and return right answer

# Player 
	initialize with
    @name
    @lifes
  get and set @lifes


# Game
  @game_status = "ongoing" / "end" (while game_status = ongoing continue)
  @current_player = 
    @@turn = 0
    get and set @@turn (+1)
    whos_next_turn? (if @@ even => P1 else => P2)
  @player1 = Player.new
  @player2 = Player.new
  @players = [@player1, @player2]

    end_game 
      @game_status => end
      declare other player the winner

    change_player 
      turn++
    
    check_the_response(response, answer)
      ? response === answer
      if true remain intact
      else deduct @lifes 
        if @lifes = 0 
          end_game()
        
      
      change_player
      


    start_game 
      while ongoing continue asking the question
        create question 
        await response
        check response with question


  

  # Main
  Initialize P1 and P2

  LOOP:
  initialize Question
  check Turn
  prints Question for P1 or P2 based on Turn
  awaits response from P
  checks with Question
    if correct keeps P @lifes intact
    else set P @lifes (-1)
  prints the result for P (correct or wrong)
  prints score based on P1 and P2 @lifes getters
  if no one has less than 3 lifes starts again
  if a either of two players has less than 0 lifes ends game


	