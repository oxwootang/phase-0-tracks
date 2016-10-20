class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times do
      puts "Woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    puts human_years*7
  end

  def lay_down
    puts "*lies down*"
  end

end

pup = Puppy.new
pup.fetch("ball")
pup.speak(3)
pup.roll_over
pup.dog_years(4)
pup.lay_down