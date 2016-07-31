require_relative 'guessing_game'

describe Guessing_game do
  let(:new_game) {Game.new("car") }

  it "update secret word with an array of blanks" do
  	expect(new_game.dashed_secret_word).to eq "_ _ _"
  end

  it "Checks iputted letter against the secret word"
  	expected(new_game.guess_letter("p")).to eq "Nope, not in the secret word!"
  end

  it "Checks inputted word against the secret word" do
  	expect(new_game.guess_word("car")).to eq "!!!"
  end

  it "prints congratulatory message when game is won" do
    expect(newgame.winner).to eq "Awesome! You guessed that right word!!"
  end

  it "prints taunting message when game is lost" do
    expect(newgame.loser).to eq "Wow, not even close!..."
  end

end








