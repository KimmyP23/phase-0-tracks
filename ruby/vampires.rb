
puts "How many employees will be processed at this time?"
num_employees = gets.chomp.to_i
start_num = 0

until start_num == num_employees
	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	year = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
	garlic_bread = gets.chomp.downcase
	puts "Would you like to enroll in the company's health insurance? (yes/no)"
	health_insurance = gets.chomp.downcase

	puts "Do you have any allergies?(yes/no)"
	allergy = gets.chomp.downcase
	if allergy == "yes"
		puts "Name allergies: (enter 'done' when finished)"
		while true
			input = gets.chomp
			break if input == "sunshine"
			break if input == "done"
		end
	else
		puts "Thank you for filling out form!"
	end

	start_num += 1
	correct_year = 2016 - age


	if year == correct_year
		knows_correct_year = true
	else
		no_correct_year = true
	end

	if garlic_bread == "yes"
		likes_garlic_bread = true
	else
		no_garlic_bread = true
	end

	if health_insurance == "yes"
		wants_health_insurance = true
	else
		no_health_insurance = true
	end

	if input == "sunshine"
		puts "Probably a vampire."
	elsif name == "Drake Cula" || name == "Tu Fang"
		puts "Defnitely a vampire."
	elsif knows_correct_year && likes_garlic_bread && wants_health_insurance
		puts "Probably not a vampire."
	elsif no_correct_year && no_garlic_bread && no_health_insurance
		puts "Almost certainly a vampire."
	elsif no_correct_year && (no_garlic_bread || no_health_insurance)
		puts "Probably a vampire."
	else
		puts "Results inconclusive."
	end
end


