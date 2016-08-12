#5.2 Mandaotry Pairing: Arrays
#Release 2:

def build_array( x, y, z)
	array = [x, y, z]
end

print build_array( "five", 5, "5")

def add_to_array(array, item)
	array << item
end

numbers = [1, 2, 3, 4, 5]
print add_to_array(numbers, 10)
print add_to_array([], "high_five")
print add_to_array(numbers, 100)

farm_animals = ["pig", "goat", "cow"]
print add_to_array(farm_animals, "chicken")



#Release 1: Explore the Docs

#1.
sports = []
p sports

#2.
sports.push("baseball")
sports.push("football")
sports.push("swimming")
sports.push("soccer")
sports.push("golf")

p sports

#3.
sports.delete_at(2)
p sports

#4.
sports.insert(2, "gymnastics")
p sports

#5. 
sports.shift
p sports

#6.
answer = sports.include?("golf")
puts "The sports array include golf: #{answer}"

#.7
letters = ["a", "b", "c", "d"]
#8
new_array = sports + letters

print new_array


