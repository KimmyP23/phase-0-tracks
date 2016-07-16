puts "What is hamster name?"
name = gets.chomp
puts "What is the volume level for this hamster from 1-10?"
volume_level = gets.chomp.to_i
puts "What is the fur color?"
fur_color = gets.chomp
puts "Is the hamster a good candidate for adoption? (yes/no)"
adoption_candidate = gets.chomp.downcase
if adoption_candidate == "yes"
	adoption_candidate = true
else
	adoption_candidate = false
end
puts "What is the estimated age?"
age = gets.chomp.to_i
if age == ""
	age = nil
end

puts "This is the hamster data collected:"
puts "Hamster name: #{name}"
puts "Hamster volume level: #{volume_level}"
puts "Hamster fur color: #{fur_color}"
puts "Good candidate for adoption: #{adoption_candidate}"
puts "Hamster estimated age: #{age}"




