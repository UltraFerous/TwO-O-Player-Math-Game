require './Player'
require './Question'
require './IOHandler'


class Game
  # Declare the starting players and turns
  player_one = Player.new()
  player_two = Player.new()

  current_player = 1
  
  while player_one.lives > 0 && player_two.lives > 0
    # Start the round values
    question = Question.new()

    # Output the question
    puts "Player #{current_player}: What does #{question.first_number} plus #{question.second_number} equal?"

    # Gets the user input
    result = IOHandler.new(gets.chomp.to_i, question.answer_number)

    # Checks the user input
    if result.correct
      puts "Yes! You are correct."
    else
      puts "Seriously? No!"
      if current_player == 1
        player_one.lives =  player_one.lives - 1
      else 
        player_two.lives =  player_two.lives - 1
      end
    end

    # Changes the turn 
    if current_player == 1
      current_player = 2
    else 
      current_player = 1
    end

    #End Round
    puts "P1: #{player_one.lives}/3 vs P2: #{player_two.lives}/3"
    puts ""

    if player_one.lives > 0 && player_two.lives > 0
      puts "----- NEW TURN -----"
    end

  end

  # Prints game over
  puts "GAME OVER!"
  puts "Player #{current_player} WINS!"

end