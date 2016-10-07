puts "How many employees will be processed?"
employees = gets.chomp.to_i
while employees > 0
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp
puts "What year were you born?"
year = gets.chomp
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp
puts "Would you like to enroll in the company's health insurance?"
insurance = gets.chomp
interview = nil
if age && (garlic || insurance)
  interview = "Not"
end
if !age && (!garlic || !insurance)
  interview = "Probably"
end
if !age && !garlic && !insurance
  interview = "Certain"
end
if name == "Drake Cula" || name == "Tu Fang"
  interview = "Definitely"
else
  interview
end
case interview
when "Not"
  print "Probably not a vampire."
when "Probably"
  print "Probably a vampire."
when "Certain"
  print "Almost certainly a vampire."
when "Definitely"
  print "Definitely a vampire."
when nil
  print "Results inconclusive."
end
puts "Please list any allergies, one at a time."
allergies = gets.chomp
while allergies != "sunshine" || sunshine != "done"
  puts "Please list any allergies, one at a time."
  allergies = gets.chomp
end
if allergies == "sunshine"
  interview = "Probably"
end
employees -= 1
end