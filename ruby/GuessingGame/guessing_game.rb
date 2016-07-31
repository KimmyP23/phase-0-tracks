#Create a class for game
=begin
A guessing Game
class GuessingGame

A word guessing game:
Driver code will handle input and output

def initialize (word)
	@secret_word = word.downcase
end

1. One user can enter a word, while another user attempts tp guess the word


Ask user1 for a word and get answer from user 1
user1 input:gets.chomp

Ask user2 for a guess attempt and get attempt from user2


2. Guesses are limited.
If word.length is shorter than/or equal to 5 letters than give 4 guess
If word.length is longer than 5 letters than give 7 guesses

3. If user2 repeats an answer then the amswer does not count against user

4. After each guess, user2 will receive a letter that fills in the word. ex "_ _ _ _ _ _ _ " "_ _ _ c _ _ _ " word: unicorn

5. User should het a congratulatory message if they win and a taunt message if they lose.
=end

class Game
	attr_reader :secret_word, :guesses_remaining, :updated_secret

	def initialize(user1_word)
		@secret_word = user1_word.split('')
		@alphabet = ("a".."z").to_a
		@guesses_remaining = user1_word.length
		@right_letters = []
	end

	def dashed_secret_word
		@dashed_word = @secret_word.map {|l| l = "_"}
		puts @dashed_word.join(' ')
	end

	def guess_letter(letter)
		if @alphabet.include?(letter)
			@guesses_remaining -= 1
			@alphabet.delete(letter)
			if @secret_word.join('').include?(letter)
				puts "#{letter} is in the secret word!"
				dashed_secret_word
				@right_letters << letter
			else
				puts "Nope, not in the secret word!"
			end
		else
			puts "You've already tried that letter!"
		end
		puts "#{@right_letters} included in secret word in any order"
		puts "You have #{@guesses_remaining} guesses left"
		puts "\n"*3
		
	end


	def guess_word(user2_word)
		if @secret_word.join('') == user2_word
			puts "!!!"
		else
			puts "Nope"
		end
		@guesses_remaining -= 1
	end

	def winner
		puts "Awesome! You guessed that right word!!"
	end

	def loser
		puts "Wow, not even close!..."
	end
end



#UserLogic:

puts "Welcome to the Guessing Game! To play, User 1 will enter a secret word. 
Then, User 2 will have a certain amount of guesses to figure out the secret word!"

puts "\nOkay, let's get started! User 1: What word would would you like to be the secret word?"
user1_word = gets.chomp.downcase

puts "\n"* 25

new_game = Game.new(user1_word)

puts "Great! Let's begin the secrecy!"
puts "Secret word: #{user1_word.length} letters so that means #{new_game.guesses_remaining} guesses to figure out secret word!" 
new_game.dashed_secret_word
puts "\n"

until new_game.guesses_remaining == 0 
	puts "User 2, would you like to guess a letter or word?"
	user2_choice = gets.chomp.downcase
	if user2_choice == "letter"
		puts "What letter would you like to choose?"
		letter_choice = gets.chomp.downcase
		new_game.guess_letter(letter_choice)
	elsif user2_choice == "word"
		puts "What word would you like to guess?"
		word_guess = gets.chomp
		new_game.guess_word(word_guess)
		if user1_word == word_guess
			new_game.winner
			break
		end
	else
		puts "Not a valid choice!"
	end
end

if new_game.guesses_remaining == 0
	new_game.loser
end




			








