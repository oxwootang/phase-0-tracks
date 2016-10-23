class Game

  attr_reader :answer
  attr_accessor :guess, :solution, :num_guesses, :guesses, :done

  def initialize(user_1)
    @answer = user_1
    @guess = ""
    @solution = "_" * @answer.length
    @num_guesses = @answer.length
    @guesses = []
    @done = false
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
    for i in (0..@num_guesses)
      if @answer[i] == @guess[i]
        @solution[i] = @answer[i]
      end
    end
    puts @solution
  end

  def game_over(game_result)
    if game_result
      @done = true
      "Congrats on guessing the word: #{@answer}!"
    else
      "Sorry, you ran out of tries."
    end
  end
end

puts "User 1, type the word for the game."
new_game = Game.new(gets.chomp)
while new_game.guesses.length < new_game.answer.length
  puts "The word has #{new_game.answer.length} letters: #{new_game.solution}"
  puts "User 2 please enter your guess. You have #{new_game.num_guesses} guesses left."
  new_game.guess = gets.chomp
  if new_game.guesses.include?(new_game.guess)
    next
  else
    new_game.guesses << new_game.guess
    new_game.num_guesses -= 1

    if new_game.correct_answer == true
      puts new_game.game_over(true)
      break
    end
  end
  new_game.compare_guess(new_game.guess)
end

if new_game.num_guesses == 0 && new_game.done == false
  puts new_game.game_over(false)
end
