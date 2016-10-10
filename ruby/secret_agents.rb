# Make a counter variable.
# Start a loop that ends when the counter variable is no longer less than the length of the string.
# In the loop, index the counter in the string argument and call the method next and make it a permanent change.
# Make a conditional if statement for if the string has a space character.
# The loop should parse through the whole string argument.

def encrypt(input_str)
  count = 0
  to_encrypt = input_str
  #p "Initializing count at: #{count}"
  #p "Initializing input string: #{to_encrypt}"
  while count < to_encrypt.length
    #p "Current letter: #{to_encrypt[count]}"
    if to_encrypt[count] == " "
      to_encrypt[count] = " "
    elsif to_encrypt[count] == "z"
      to_encrypt[count] = "a"
    else
      n_letter = to_encrypt[count].next
      #p "This should be the next letter: #{n_letter}"
      to_encrypt[count] = n_letter
    end
    #p "Should have made a change: #{to_encrypt}"
    count += 1
    #p "Count should have gone up by 1: #{count}"
  end
  #p "I am now out of the loop"
  #p to_encrypt
  return to_encrypt
end



# Make a counter variable.
# Start a loop that ends when the counter is no longer less than the length of the input.
# In the loop, make a conditional if statement for "a" to be decrypted to "z", and an elsif for space characters.
# The else statement will parse the input for the current counter variable index and will search for the letter in a string of the alphabet to find the index before it to change the letter to (very wordy, I know).
# Decrement the counter variable and return the decrypted string outside the loop.

def decrypt(str_input)
  count = 0
  to_return = str_input
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  while count < str_input.length
    if to_return[count] == " "
      to_return[count] = " "
    elsif to_return[count] == "a"
      to_return[count] = "z"
    else
      to_return[count] = alphabet[alphabet.index(to_return[count])-1]
    end
    count += 1
  end
  #p to_return
  return to_return
end


encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
decrypt(encrypt("swordfish"))
# This nested method call works because both of the called methods are available globally.


# Define a method that asks for user input.
# The user input will determine if the user needs to encrypt or decrypt.
# Next the user will need to input the string.
# The encrypting or decrypting should be done in case statments.
# Print the result to the screen.

def agent_interface()
  p "Hello Agent. Do you need to encrypt (E) or decrypt (D)?"
  method_input = gets.chomp
  p "Please enter the password."
  password = gets.chomp
  case method_input
    when method_input.downcase == "encrypt" || method_input.downcase == "e"
      p encrypt(password)
    when method_input.downcase == "decrypt" || method_input.downcase == "d"
      p decrypt(password)
    else
      p "What do you want to do?"
    end
end
