class Santa
	#getter method --> syntatic sugar
	attr_reader :ethnicity
	#setter method --> syntatic sugar
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", 
			"Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		if @reindeer_ranking.include?(reindeer_name)
			@reindeer_ranking.delete(reindeer_name)
			@reindeer_ranking << reindeer_name
		end	
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

# santas = []
# example_genders = ["female", "male", "agender", "gender fliud", "alien"]
# example_ethnicities = ["Puerto Rican", "Chilean", "Spanish", "Russian", "martian"]

# example_genders.length.times do |i|
# 	santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

 # santas.each do |santa|
 # 	santa.speak
 # 	santa.eat_milk_and_cookies("peppermint bark")
 # 	santa.about_santa
 # 	santa.celebrate_birthday
 # 	santa.get_mad_at("Prancer")
 # 	santa. gender = "alien"
 # 	santa.age
 # 	santa.ethnicity
 # 	santa.about_santa
 # end

def create_lots_of_santas(number_of_santas)
	example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
	example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	
	number_of_santas.times do |santa|
		santa = Santa.new(example_genders.sample, example_ethnicities.sample)
		santa.age = rand(140)
		age = santa.age
		santa.celebrate_birthday
		santa.speak
		santa.get_mad_at("Prancer")
		santa.eat_milk_and_cookies("double fudge")
	end
end

create_lots_of_santas(2)










