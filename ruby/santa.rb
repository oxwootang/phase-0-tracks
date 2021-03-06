class Santa

  attr_reader :ethnicity
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance"
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday()
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking.push(reinder)
  end

  # def gender=(new_gender)
  #   @gender = new_gender
  # end

  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
100.times do
  new_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
  new_santa.age = rand(0..140)
  p new_santa.age
  p new_santa.ethnicity
  p new_santa.gender
end

# santas << Santa.new("male", "Asian")
# jolly = Santa.new("N/A", "N/A")
# santas << jolly
# jolly.speak
# jolly.eat_milk_and_cookies("oatmeal raisin")
# santas[-2].speak
# santas[-2].eat_milk_and_cookies("gingersnap")
# puts santas[1].age
# puts santas[1].ethnicity
# puts santas[1].celebrate_birthday
# puts santas[1].celebrate_birthday
# p santas[3]
# puts santas[3].gender = "female"
# p santas[3]