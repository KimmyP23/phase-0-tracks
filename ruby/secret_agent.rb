# 1. Encrypt

# Pseudocode:
# Create an index reference varible (alpha)
# For any letter, use that letter's index 
# and add 1 to advance one letter forward
# If there is a space character, return space character.
# Return modified string

# Code for encrypt:

def encrypt(string)
  index = 0
  alpha = "abcdefghijklmnopqrstuvwxyz"
  while index < string.length
    if string[index] == " "
      string.split(',')
    elsif string[index] == 'z'
      string[index] = 'a'
    else
      new_index = alpha.index(string[index]) + 1
      string[index] = alpha[new_index]
    end
    index += 1
  end
  string
end

# puts encrypt("a c")
# puts encrypt("zed")

# 2. Decrypt

# Pseudocode
# For any letter, check its index in the alphabet, and then -1
# the alphabet index to acquire the desired letter
# Ignore space characters

def decrypt(string)
  index = 0
  alpha = "abcdefghijklmnopqrstuvwxyz"
  while index < string.length
    if string[index] == " "
      string.split(',')
    else
      new_index = alpha.index(string[index]) - 1
      string[index] = alpha[new_index]
    end
    index += 1
  end
  string
end

# puts decrypt("b d")
# puts decrypt("afe")

# puts decrypt(encrypt("swordfish"))

# Pseudocode
# 1. Ask user if they want to decrypt or encrypt
# 2. Ask for password
# 3. If decrypt is requested, run decrypt method and print results
#   If encrypt is requested, run encrypt method and print results

puts "Do you want to decrypt or encrypt?"
choice = gets.chomp

puts "Enter password?"
password = gets.chomp

if choice.downcase == "decrypt"
  puts decrypt(password)
elsif choice.downcase == "encrypt"
  puts encrypt(password)
else
  print "I don't understand what that means."
end

