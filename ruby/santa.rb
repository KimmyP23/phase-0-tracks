class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", 
			"Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def celebrate_birthday
		@age = 1
	end

	def get_mad_at=(reindeer_name)
		if @reindeer_ranking.include?(reindeer_name)
			@reindeer_ranking.delete(reindeer_name)
			@reindeer_ranking << reindeer_name
		end	

	end

	def gender=(new_gender)
		@gender = new_gender
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end
	def about_santa
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		puts "Reindeer Ranking: #{@reindeer_ranking}"
		puts "Age: #{@age}"
	end 
end

# santa_con1 = Santa.new
# santa_con1.speak
# santa_con1.eat_milk_and_cookies("chocolate chip")

santas = []
example_genders = ["female", "male", "agender", "gender fliud", "alien"]
example_ethnicities = ["Puerto Rican", "Chilean", "Spanish", "Russian", "martian"]

example_genders.length.times do |i|
	santas << Santa.new(example_genders[i], example_ethnicities[i])
end

 santas.each do |santa|
 	santa.speak
 	santa.eat_milk_and_cookies("peppermint bark")
 	santa.about_santa
 	santa.celebrate_birthday
 	santa.get_mad_at = ("Prancer")
 	santa. gender = "alien"
 	santa.age
 	santa.ethnicity
 	santa.about_santa
 end


