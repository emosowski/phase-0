# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative loads a file that follows the same path as the current file
# require loads a file from a different directory necessitating a longer path
require_relative 'state_data'

class VirusPredictor
#   This method initializes the class's instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#   This method allows us to access the data contained inside the private methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end


  private
#   Uses control flow and data to compare population densities and number of deaths predicted. Outputs string explaining how many people each state stands to lose via deadly virus.
  def predicted_deaths
    # predicted deaths is solely based on population density
     number_of_deaths =
    if @population_density >= 200
      (@population * 0.4).floor
    elsif @population_density >= 150
      (@population * 0.3).floor
    elsif @population_density >= 100
      (@population * 0.2).floor
    elsif @population_density >= 50
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#   Uses control flow to compare population densities to determine the speed of spread of the deadly virus. Outputs string explaining speed of spread.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # speed = 0.0
    speed = if @population_density >= 200
       0.5
    elsif @population_density >= 150
       1
    elsif @population_density >= 100
       1.5
    elsif @population_density >= 50
       2
    else
       2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


=begin alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

def all_states
  STATE_DATA.each do |state_name, data|
    territory = VirusPredictor.new(state_name, data[:population_density], data[:population])
    territory.virus_effects
  end
end

all_states


#=======================================================================
=begin Reflection Section

What are the differences between the two different hash syntaxes shown in the state_data file?

The first version uses rocket syntax to point to the data as the value and the second version uses symbols to point to the values.

What does require_relative do? How is it different from require?

require_relative allows you to load a user created file into your current file. require is used to load a specific ruby libary into your file.

What are some ways to iterate through a hash?

You can iterate through a hash using the each method to speparate keys and values.

When refactoring virus_effects, what stood out to you about the variables, if anything?

In most cases, we did not need so much repetition of the same variables. It was obvious that this code was not DRY because there was so much repetition.

What concept did you most solidify in this challenge?

This gave me more practice iterating over a nested hash. It also reviewed ruby syntax for me as we have been working in JavaScript this entire week.

=end