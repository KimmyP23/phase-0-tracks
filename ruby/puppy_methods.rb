#Release 6.2
#Pairing: Kimberly Pena and Thomas Logan Graves

class Puppy

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


