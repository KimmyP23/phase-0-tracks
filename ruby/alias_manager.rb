#Pseudocode:
#create a method that will convert an inputted name into an array with each letter as an
#element of the array.
#create a method that takes an array; iterate through each letter of the array and evaluate whether the letter is 
# a vowel or a consonant; use conditional statements to update letter to new value, depending
#on whether the letter is a vowel or consonanr
#create a method that will join the letters of an array to create a first and last name; then capitalize
#new first and last name


def name_swap_array(name)
	name_array = name.downcase.split
	name_swap = name_array[1] + " " + name_array[0]
	name_swap.chars
end

def letter_exchange(array)
	vowels = 'aeioua'
	consonants = 'bcdfghjklmnpqrstvwxyzb'

	array.map! do |letter|
		if vowels.include?(letter)
			vowels[vowels.index(letter) + 1]
		elsif consonants.include?(letter)
			consonants[consonants.index(letter) + 1]
		else
			letter
		end
	end
end

def secret_name(array)
	name = array.join('').split(' ')
	spy_name = name[0].capitalize! + " " + name[1].capitalize!
end

#Driver Code:
# name_array = name_swap_array("Felcia", "Torres")
# p name_array

# exchange = letter_exchange(name_array)
# p exchange

# p secret_name(exchange)


alias_collection = {}
while true
	puts "Please provide your first and last name to receive spy name: (or enter 'quit' to quit)"
	name = gets.chomp

	break if name == 'quit'

	name_switch = name_swap_array(name)
	exchange = letter_exchange(name_switch)
	spy_name = secret_name(exchange)

	puts "Your new alias is #{spy_name}"
	puts "\n"
	alias_collection[name] = spy_name
end
puts "Now that your mission is complete, you may know that truth:"
alias_collection.each {|name, spy_name| puts "#{spy_name} is actually #{name}!"}








