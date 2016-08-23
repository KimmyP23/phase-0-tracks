# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative:
#require_relative be able to access another rb file directory; or state path to access file


require_relative 'state_data'

class VirusPredictor
  #initialize an instance of VirusPredictor with attributes of state_of_origin, population_density, and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

 
  #calls results predicted deaths method and speed of spread
  def virus_effects
    num_deaths = predicted_deaths
    num_months = months_to_spread
    print "#{@state} will lose #{num_deaths} people in this outbreak"
    puts " and will spread across the state in #{num_months} months.\n\n"
  end

 
private
  #calculates number of deaths based on population density and population
  def predicted_deaths
    # predicted deaths is solely based on population density
    case true
     when @population_density >= 200 then multiplier = 0.4
     when @population_density >= 150 then multiplier = 0.3
     when @population_density >= 100 then multiplier = 0.2
     when @population_density >= 50 then multiplier = 0.1
    else multiplier = 0.05
    end
    number_of_deaths = (@population * multiplier).floor

    

  end

  #depending on population density will dictate the speed at which virus will spread
  def months_to_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    months = 0.0

    if @population_density >= 200
      months += 0.5
    elsif @population_density >= 150
      months += 1
    elsif @population_density >= 100
      months += 1.5
    elsif @population_density >= 50
      months += 2
    else
      months += 2.5
    end
    months
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, population_info|
  VirusPredictor.new(state, population_info[:population_density], population_info[:population]).virus_effects
end


#=======================================================================
# Reflection Section