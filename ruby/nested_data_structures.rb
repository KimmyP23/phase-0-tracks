stadium = {
	'Stands' => ["outfield bleachers", "behind home plate premium seats", "VIP lounge", "left-field seating", "right-field seating"],
	'Field' => ["outfield", "infield", "dugouts", "bullpen"],
	'Food vendors' => {
		'Drinks' => "beer",
		'Dessert' => "Ice Cream",
		'Snacks' => ["Hot Dogs", "Peanuts", "Crackerjacks"]
	},
	'Press box' => ["announcer", "statician", "empire"]
}

p stadium

p stadium['Stands'][1] #return "behind home plate"
stadium['Food vendors']['Snacks'].push("sunflower seeds") # add sunflower seeds to array
p stadium['Food vendors']['Snacks']  
p stadium['Press box'].reverse
p stadium['Food vendors']['Drinks'].upcase
p stadium['Field'].include?("warning track")
p stadium['Field'].last
p stadium['Food vendors']['Dessert'].swapcase



