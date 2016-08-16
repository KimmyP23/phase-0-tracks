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
	attr_reader :age
	attr_accessor :name, :house
	def initialize (name, age, house)
		@name = name
		@age = age
		@muggle = false
		@house = house
	end

	def waves_wand(num)
		num.times{puts "**waves wand**"}
	end

	def cast_spell
		waves_wand(3)
		puts "Expecto Patronum!!!" if @house == "gryffindor"
		puts "Wingardium Leviosa!!!" if @house == "ravenclaw"
		puts "Expelliarmus!!!" if @house == "hufflepuff"
		puts "Crucio!!!" if @house == "slytherin"
	end

	def fly_broom(altitude)
		"#{@name} is flying up to #{altitude} feet over Hogarts"
	end
	def print_wizard
		puts "Name: #{@name}"
		puts "Age: #{@age}"
		puts "House: #{@house}"
	end
end

houses = ["gryffindor", "ravenclaw", "hufflepuff", "slytherin"]
wizards = []

#User Interface
puts "Welcome to the wonderful world of wizardry!!"
puts "How many wizards would you like to create?"
num_wizards = gets.chomp.to_i

num_wizards.times do |wizard|
	puts "Please provide a name:"
	name = gets.chomp
	puts "Please provide an age:"
	age = gets.chomp.to_i
	puts "\n"
	puts "House selection a house:"
	houses.each_with_index {|house, index| puts "#{house}: #{index}"}
	puts "\n"
	puts "Please provide house index:"
	house_idx = gets.chomp.to_i
	wizard = Wizard.new(name, age, houses[house_idx])
	puts "\n"
	wizards << wizard
end

puts "Here are your wizards:"
wizards.each do |wizard|
	wizard.print_wizard
	wizard.cast_spell
	puts "\n"
end


