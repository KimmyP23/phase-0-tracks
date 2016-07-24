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
 end













