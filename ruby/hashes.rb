# Define a method that will take in no arguments.
# This method will take user input and place it in a hash.
# Empty hash should be initialized.
# Values to be stored are: client's name, age, number of children, decor theme, do they smoke, do they party/play loud music (these are the key labels).
# Prompt the user for information.
# Store information in the appropriate key in the hash.

def design_client
  client = {}
  puts "What is the client name?"
  client[:name] = gets.chomp
  puts "What is the client's age?"
  client[:age] = gets.chomp_to_i
  puts "How many children do you have?"
  client[:children] = gets.chomp_to_i
  puts "What is the decor theme?"
  client[:theme] = gets.chomp
  puts "Do you smoke?"
  smoke = gets.chomp
  if smoke == "yes" || smoke == "true"
    client[:smoke] = true
  else
    client[:smoke] = false
  end
  puts "Do you party or play loud music?"
  loud = gets.chomp
  if loud == "yes" || loud == "true"
    client[:loud] = true
  else
    client[:loud] = false
  end
  puts client
  puts "[What] Would you like to make a change [to]?"
  change = gets.chomp
  if change != "none"
    if change == "age" || change == "children"
      puts "Enter the new value"
      new_val = gets.chomp
      client[change.intern] = new_val.to_i
    elsif change == "smoke" || change == "loud"
      puts "Enter the new value"
      new_val = gets.chomp
      if new_val == "yes" || new_val == "true"
        client[change.intern] = true
      else
        client[change.intern] = false
      end
    else
      puts "Enter the new value"
      new_val = gets.chomp
      client[change.intern] = new_val
    end
  else
    puts client
  end
end