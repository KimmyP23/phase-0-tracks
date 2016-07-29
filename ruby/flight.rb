#declare Flight module
module Flight
	def take_off(altitude)
		puts "Taking off and ascending until reaching #{altitude} feet..."
	end
end

class Bird
	#add Flight to Bird class
	include Flight
end

class Plane
	#add Flight to Plane class
	include Flight
end
bird = Bird.new
bird.take_off(10_000)
plane = Plane.new
plane.take_off(20_000)
