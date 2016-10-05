puts "What is the hamster's name?"
hamster_name = gets.chomp
puts "What is the hamster's volume level?"
hamster_volume = gets.chomp.to_i
puts "What color is its fur?"
hamster_color = gets.chomp
puts "Is the hamster a good candidate for adoption?"
adoption = gets.chomp
puts "How old is the hamster?"
age = gets.chomp.to_f
if age == 0
  age = nil
end
if adoption == "yes"
	adoption = true
else adoption = false
end 
puts "Hamser: #{hamster_name}"
puts "Volume Level: #{hamster_volume}"
puts "Fur Color: #{hamster_color}"
puts "Adoption Candidate? #{adoption}"
if age == nil
	puts "Hamster age not available"
else puts "Hamster Age: #{age} years"
end



