#Declare module(Standalone Module)
# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end
# 	def self.yelling_happily(words)
# 		words + "!!!" + " :)"
# 	end
# end

# p Shout.yell_angrily("Why me")
# p Shout.yelling_happily("Yay me")

#Convert a Standalone Module to a Mixin
module Shout
	#no need to use .self for Mixin
	def yell_angrily(words)
		words + "!!!" + " :("
	end
	def yelling_happily(words)
		words + "!!!" + " :)"
	end
end

class Mom
	include Shout
end

class Coach
	include Shout
end

mommy_dearest = Mom.new
p mommy_dearest.yell_angrily("Clean your room")

prep_coach = Coach.new
p prep_coach.yelling_happily("We won")