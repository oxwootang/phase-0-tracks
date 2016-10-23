require_relative 'game'

describe Game do
  let(:new_game) { Game.new("answer")}

  it "returns the answer initialized to the game" do
    expect(new_game.answer).to eq "answer"
  end

  it "returns the initialized default of the guess" do
    expect(new_game.guess).to eq ""
  end

  it "returns true for when the answer is correctly guessed" do
    new_game.guess = "answer"
    expect(new_game.correct_answer).to eq true
  end

  it "returns false for when the answer is incorrectly guessed" do
    new_game.guess = "norway"
    expect(new_game.correct_answer).to eq false
  end

  it "returns a string of the appropriately guessed letters and _ for the letters not yet correctly guessed" do
    expect(new_game.compare_guess("buffer")).to eq "____er"
  end

  it "returns a string of the compounded correctly guessed letters" do
    new_game.compare_guess("buffer")
    expect(new_game.compare_guess("andrew")).to eq "an__er"
  end

  it "returns a string of a victory" do
    new_game.guess = "answer"
    expect(new_game.game_over(true)).to eq "Congrats on guessing the word: answer!"
  end

  it "returns a string of a loss" do
    new_game.guess = "apples"
    expect(new_game.game_over(false)).to eq "Sorry, you ran out of tries."
  end

end