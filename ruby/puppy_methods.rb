#Module6.2
#Pairing: Kimberly Pena and Thomas Logan Graves

class Puppy
  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
  end
  
  def speak(i)
      i.times { puts "Woof!" }
  end
  
  def roll_over
      puts "*Rolls Over*"
  end
  
  def dog_years(i)
      puts "#{i * 7}"
  end
  
  def shake
      puts "*Holds up paw*"
  end
  
end

charlie = Puppy.new

charlie.fetch("ball")
charlie.speak(3)
charlie.roll_over
charlie.dog_years(4)
charlie.shake

#Release 2

class Cars
  def initialize
    puts "Initializing an amazing new cars instance..."
  end
  
  def rev_engine(i)
    i.times { puts "Vrruumm!!!!!!!!" }
  end
  
  def burnout
    puts "*Burnsout*"
  end
  
  def roll_down_windows
    puts "*Rolls Down Windows*"
  end
  
  def roll_up_windows
    puts "*Rolls Up Windows*"
  end

end


car_array = []

until car_array.length == 50
  car_array << Cars.new
end

p car_array
car_array = []

until car_array.length == 50
  car_array << Cars.new
end

p car_array

car_array.each do |car|
  car.rev_engine(3)
  car.burnout
  car.roll_down_windows
  car.roll_up_windows
end
  


