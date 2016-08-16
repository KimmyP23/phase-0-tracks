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

class Swimmer
  def initialize
    puts "Initializing a new swimmer instance..."
  end

  def swims_laps(num)
    until num == 0
      puts "#{num} laps to go"
      num -= 1
    end
  end
  
  def wins_gold
    puts "Gold Medal!!!!!!!!"
  end
  
  def breaks_world_record
    puts "*New World Record*"
  end

end

swimmers = []
while swimmers.size <= 50
  swimmers << Swimmer.new
end


swimmers.each do |swimmer|
  swimmer.swims_laps(3)
  swimmer.wins_gold
  swimmer.breaks_world_record
end



  


