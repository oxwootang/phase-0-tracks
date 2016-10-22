# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" " :)"
#   end
# end

# Shout.yell_angrily("Not happy")
# Shout.yelling_happily("Very happy")

module Shout
  def turn_up
    puts "Make some noise!"
  end

  def turn_down
    puts "Turn down that racket!"
  end
end

class Hobo
  include Shout
end

class Announcer
  include Shout
end

Announcer.new.turn_up
Hobo.new.turn_down
