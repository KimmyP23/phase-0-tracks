#pseudocode:
#ask user for information: client name, age, number of children, decor theme, city, fav color, on a budget
#use conversion to make sure that user input is in the appropiate data type; age -> integer, city ->string, on a budget -> true/false
#ask user if they would like to make any changes to their input
#create branches to accommodate any updates using if statements and then update any given variable
#open a new hash name:interior design client
#add each key and value to the hash

puts "Please fill out your information:"
puts "Client name:"
client_name = gets.chomp
puts "Client age:"
age = gets.chomp.to_i
puts "Number of children:"
number_of_children = gets.chomp.to_i
puts "Decor theme:"
decor_theme = gets.chomp
puts "Client city:"
city = gets.chomp
puts "Is client on a budget?(yes/no)"
budget = gets.chomp.downcase
if budget == "yes"
	budget = true
else
	budget = false
end

puts "Would you like to make any updates?(yes/no)"
updates = gets.chomp.downcase

if updates == "yes"
	puts "What would you like to update?
		client name
		age
		number_of_children
		decor_theme
		city
		budget"
	new_update = gets.chomp.downcase
	if new_update == "client name"
		puts "Enter new client name:"
		new_client_name =gets.chomp
		client_name = new_client_name
	elsif new_update == "age"
		puts "Enter new age:"
		new_age = gets.chomp.to_i
		age = new_age
	elsif new_update == "number_of_children"
		puts "Enter new number of children:"
		new_number_of_children = gets.chomp.to_i
		number_of_children = new_number_of_children
	elsif new_update == "decor_theme"
		puts "Enter new decor theme:"
		new_decor_theme = gets.chomp
		decor_theme = new_decor_theme
	elsif new_update == "city"
		puts "Enter new city:"
		new_city = gets.chomp
		city = new_city
	else
		puts "Is client on a buget?(yes/no)"
		new_budget = gets.chomp.downcase
			if new_budget == "yes"
				budget = true
			else
				budget = false
			end
	end	
end
