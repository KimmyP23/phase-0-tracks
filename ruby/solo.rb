#6.4 Solo Challenge: Designing and Implementing a Class
#Design a Wizard class
#Attributes:
#name
#age
#house
#instance methods
#cast a spell method
#waves a wand method
#fly broom method

class Wizard
	def initialize (name, age)
		@name = name
		@age = age
		@house = Gryffindor

	end

	def cast_spell
		puts "Expelliarmus..."
	end

	def waves_wand(num)
		num.times{puts "**waves wand**"}
	end

	def fly_broom(altitude)

