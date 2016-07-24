#pseudocode:
#input: first and last name
#output: alias

#Swap the first and last name
#change vowels to next_vowel
#-create a vowel variable to check if letter matches vowel
#change consonants to the next consonant
#-create a consonants variable to check if letter matches consonant
#change strings first and last names into arrays and then iterate through the array to check
#each letter
#create conditional statements for control flow

#create alias creator method that takes in first name and last name as arguments
def alias_creator(first_name, last_name)
	#create vowel and consonants variable as reference
	vowels = ["a", "e", "i", "o", "u"]
  	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  	#change first_name and Last_name variables into two arrays
  	first_name_array = first_name.chars
  	last_name_array = last_name.chars
  	#use .map! to iterate through each array and compare vowels and consonants
  	first_name_array.map! do|letter|
		if vowels.include?(letter)
			if letter == "u"
				vowels[0]
			else
				vowels[vowels.index(letter) + 1]
			end
		elsif consonants.include?(letter)
			if letter == "z"
				consonants[0]
			else
				consonants[consonants.index(letter) + 1]
			end
		end
	end
	last_name_array.map! do|letter|
		if vowels.include?(letter)
			if letter == "u"
				vowels[0]
			else
				vowels[vowels.index(letter) + 1]
			end

		elsif consonants.include?(letter)
			if letter == "z"
				consonants[0]
			else
				consonants[consonants.index(letter) + 1]
			end
		end
	end
	#create spy_alias variable
 	spy_alias = last_name_array.join('').capitalize + " " + first_name_array.join('').capitalize
 end

#create empty array to hold spy aliases
spy_aliases = []
first_name = ''
last_name = ''
#initialize loop
while first_name != "quit" || last_name != "quit"
#ask for first name
  	puts "Please enter your first name to get alias: (or Type 'quit' to stop)"
  	first_name = gets.chomp.downcase
 #ask for last name
  	puts "Please enter your last name to get alias:(or type 'quit' to stop)"
  	last_name = gets.chomp.downcase
  	full_name = first_name.capitalize + ' ' + last_name.capitalize
  
  	puts "Your new alias is #{alias_creator(first_name, last_name)}"
 #add aliases to spy_aliases array
  	spy_aliases << [full_name, alias_creator(first_name, last_name)]
end
 
p spy_aliases
spy_aliases.each {|name| puts "#{name[1]} is actually #{name[0]}"}
 












