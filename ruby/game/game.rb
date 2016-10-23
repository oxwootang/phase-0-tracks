class Game

  attr_reader :answer
  attr_accessor :guess, :solution, :num_guesses

  def initialize(user_1)
    @answer = user_1
    @guess = ""
    @solution = "_" * @answer.length
    @num_guesses = @answer.length
  end

  def correct_answer()
    if @guess == @answer
      true
    else
      false
    end
  end

  def compare_guess(user_2)
    @guess = user_2
    for i in (0...@num_guesses)
      if @answer[i] == @guess[i]
        @solution[i] == @answer[i]
      else
        next
      end
    end
    puts @solution
    @solution
  end

  def game_over(game_result)
    if game_result
      "Congrats on guessing the word: #{@answer}!"
    else
      "Sorry, you ran out of tries."
    end
  end
end


while new_game.num_guesses != 0
  puts "User 2 please enter your guess. You have #{new_game.num_guesses} guesses left."
  new_game.guess = gets.chomp
  new_game.num_guesses -= 1
  if new_game.correct_answer == true
    new_game.game_over(true)
    break
  end
  new_game.compare_guess(new_game.guess)
end

if new_game.num_guesses == 0
  new_game.game_over(false)
end
