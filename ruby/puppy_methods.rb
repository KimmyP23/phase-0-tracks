#Module6.2
#Pairing: Kimberly Pena and Thomas Logan Graves

class Puppy
  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
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

puppy = Puppy.new

puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(4)
puppy.shake

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


