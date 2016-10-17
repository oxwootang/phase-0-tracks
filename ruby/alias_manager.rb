# define a function that switches first name and last name.
# change all the vowels to the next vowel in the alphabet.
# change all consonants to the next consonant in the alphabet.

def fake_name(name)
  name_arr = name.split(' ').reverse!
  # Switching first and last name and putting each in an array [last name, first name]
  # ["Yi", "Woojae"]

  vowels = "aeiou".split('')
  # Creating an array of vowels
  # ["a", "e", "i", "o", "u"]

  name_hash = {
    last: name_arr[0],
    first: name_arr[1]
  }
  # initializing a name_hash with keys as last, first with values as the names


  # looping through last name key in name_hash
  last_name_count = 0
  for letter in name_hash[:last].split('') do
    if "aeiou".split('').include? letter.downcase
      name_hash[:last][last_name_count] = vowel(letter)
      # call the vowel method if the letter is a vowel

    else
      name_hash[:last][last_name_count] = consonant(letter)
      # call the consonant method if the letter is a consonant

    end
    last_name_count += 1
  end

  # looping through first name key in name_hash
  first_name_count = 0
  for letter in name_hash[:first].split('') do
    if "aeiou".split('').include? letter.downcase
      name_hash[:first][first_name_count] = vowel(letter)
    else
      name_hash[:first][first_name_count] = consonant(letter)
    end
    first_name_count += 1
  end

  return name_hash
end

# define a function that takes a string as an argument and returns the next consonant
def consonant(letter, vowels="aeiou".split(''))
  if vowels.include? letter.next.downcase
    return letter.next.next
    # skip the next letter if it is a vowel and return the next consonant.

  else
    return letter.next
    # return the next letter consonant.
  end
end

# define a function that takes a string as an argument and returns the next vowel
def vowel(letter, vowels="aeiou".split(''))
  vowel_index = vowels.index(letter)
  # getting the index of the vowel of the word in the vowels array
  if vowel_index == 4
    return vowels[0]
  else
    return vowels[vowel_index + 1]
  # returning the next vowel
  end
end

p fake_name("Felicia Torres")