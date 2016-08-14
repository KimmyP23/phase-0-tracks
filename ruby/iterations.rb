# #Release: 0 create method that takes a block
def method_block(str)
  #print string
  puts str
  #yield block without parameters
  yield
end
# # #run code with block; no parameters
method_block("Hello there") {puts "Testing our block"}

def method_block(str)
  name1 = "Kimberly"
  name2 = "Greg"
  puts str
  yield(name1, name2)
end

puts method_block("Nice to meet you!!") { |name1, name2| puts "Testing our block #{name1} and #{name2}"}

# #Release: 1 
# #declare an array and hash
sports = ["basketball", "football", "soccer", "tennis", "volleyball", "baseball"]
food = {
  steak: 9,
  lobster: 9,
  pizza: 10,
  lima_beans: 1,
  broccoli: 8,
  chicken: 8
  }
#  #Iterate through each one using .each/.map!
# #.each
sports.each { |sport| puts "We love to play #{sport.capitalize}!" }

food.each { |food, rank| puts "We rank #{food} as a #{rank} on a scale of 1-10." }

# # #.map!
sports.map! { |sport| sport + "!" } 
puts sports

# #Release: 2
# # #1. delete at a certain condition: ARRAY
# # # a = [ "a", "b", "c" ]
# # # a.delete_if {|x| x >= "b" }   #=> ["a"]
# # #deleted if sport had "ball" in the element
sports.delete_if { |sport| sport.include?("ball") }
p sports

# # h = { "a" => 100, "b" => 200, "c" => 300 }
# # h.delete_if {|key, value| key >= "b" }
food.delete_if { |food, rank| rank < 5 }
p food

# #2. Keep element if meets certain condition
# # a = %w{ a b c d e f }
# # a.keep_if {|v| v =~ /[aeiou]/}
sports.keep_if { |sport| sport.include?("ball") }
p sports

food.keep_if { |food, rank| rank > 8 }
p food

# #.3 alternative way 
sports.reject! {|sport| sport.include?("ball")}
p sports

food.reject! {|food, rank| rank > 8}
p food

# #4. .take_while

temperatures = [77, 82, 65, 90, 72]
new_temp = []
new_temp = temperatures.take_while {|temp| temp > 75} 
p new_temp

#.drop_while
new_temp2 = []
new_temp2 = temperatures.drop_while {|temp| temp < 75 }
p new_temp2






