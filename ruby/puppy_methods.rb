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

  def initialize
    puts "Initializing new Puppy instance ..."
  end

end

pup = Puppy.new
pup.fetch("ball")
pup.speak(3)
pup.roll_over
pup.dog_years(4)
pup.lay_down

class Boxers

  def initialize
    puts "Initializing new boxer instance."
  end

  def jab(hand)
    puts "Punch with your #{hand} hand!"
  end

  def roundhouse_kick(leg)
    puts "Roundhouse kick with your #{leg} leg!"
  end

end

boxing_team = []
until boxing_team.length > 50
  boxer = Boxers.new
  boxing_team << boxer
  puts boxing_team
end

boxing_team.each do |box|
  puts "#{box.jab("right")}"
  puts "#{box.roundhouse_kick("left")}"
end
