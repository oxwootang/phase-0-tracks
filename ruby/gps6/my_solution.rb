# Virus Predictor

# I worked on this challenge by myself.
# I spent 2 hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is a version of the built-in method require. The normal require method can be used to access data/files just like require_relative, but require_relative is a better solution to most file accessing needs because it can load files not in the same directory.

require_relative 'state_data'

class VirusPredictor

  # this is the initialize method of the VirusPredictor class and it initializes each new instance of VirusPredictor with the state_of_origin, population_density, and population instance attributes.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # this virus_effects instance method peforms two method calls, predicted_deaths and speed of spread.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private

  # this predicted_deaths instance method takes in population_density, population, and state instance attributes to calculate the estimated number_of_deaths.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if population_density <= 50
      number_of_deaths = (population * 0.05).floor
    else
      number_of_deaths = (population * 0.1 * (population_density.floor/50)).floor
    end
    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end

  # this speed_of_spread instance method calculates the time (in months) to totally spread the virus in the state given that state's population_density.
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if population_density >= 200
      speed = 0.5
    else
      speed = 2.5 - 0.5 * (population_density.floor/50)
    end
    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# implemented a new feature/method that creates a report for all 50 states.
def report_all
  STATE_DATA.each do |state, state_values|
    new_state = VirusPredictor.new(state, state_values[:population_density], state_values[:population])
    new_state.virus_effects
  end
end

# DRIVER CODE
 # initialize VirusPredictor for each state

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

report_all

#=======================================================================
# Reflection Section
# The difference in syntax between the two hash styles is one uses a string as the key, and uses a hash rocket to assign the value to the string keys, while the inner hash uses symbols and loses the hash rocket when assigning values.
# require_relative is a version of the built-in method require. The normal require method can be used to access data/files just like require_relative, but require_relative is a better solution to most file accessing needs because it can load files not in the same directory.
# Some ways to iterate through a hash is to use .each |key, value| and using those block parameters to iterate. Another way to iterate through a hash is to iterate through just the keys wish hash#keys.
# refactoring virus_effects, the parameters given to predicted_deaths and speed_of_spread were similar with the exception that speed_of_spread didn't require the population. But that wasn't what needed refactoring. In defining the methods predicted_deaths and speed_of_spread, the initial code had the instance variables mentioned with @ in front, but in the method calls in virus_effects, the @ is already in front. I thought that it was repetitive to give the same self-parameters like that so I had the method definitions changed from @ to just regular parameter arguments.
# The concept I most solidified is my understanding of Ruby method calls, data structures, and class construction.