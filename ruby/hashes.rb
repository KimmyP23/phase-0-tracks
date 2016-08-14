#pseudocode:
#ask user for information: client name, age, number of children, decor theme, city, fav color, on a budget
#use conversion to make sure that user input is in the appropiate data type; age -> integer, city ->string, on a budget -> true/false
#open a new hash name:interior design client
#add each key and value to the hash
#print hash
#ask user if they would like to make any changes to their input
#create branches to accommodate any updates using if statements and then update any given variable
#update hash with any chages

puts "Please provide your information:"
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
on_budget = gets.chomp.downcase
if on_budget == "yes"
	on_budget = true
else
	on_budget = false
end

interior_design_client = {}
interior_design_client[:client_name] = client_name
interior_design_client[:age] = age
interior_design_client[:number_of_children] = number_of_children
interior_design_client[:decor_theme] = decor_theme
interior_design_client[:city] = city
interior_design_client[:on_budget] = on_budget

puts "Current Client Information:"
interior_design_client.each {|client_category, client_answer| puts "#{client_category}: #{client_answer}"}

def display_keys(hash)
	hash.each {|key, value| puts "#{key}"}
end

while true
	puts "Would you like to make any updates?(enter 'none' to finish)"
	updates = gets.chomp.downcase
	
	break if updates == "none"

	puts "What would you like to update?"
	puts "\n"
	display_keys(interior_design_client)
	puts "\n"
	puts "Enter your selection category:"
	new_update = gets.chomp.to_sym
	puts "What would you like to update #{new_update.upcase} to?"
	new_update_value = gets.chomp
		if new_update ==  :age || new_update_value == :number_of_children
			interior_design_client[new_update] = new_update_value.to_i
		else
			interior_design_client[new_update] = new_update_value
		end
end
puts "Final Client Information"
interior_design_client.each {|client_category, client_answer| puts "#{client_category}: #{client_answer}"}


