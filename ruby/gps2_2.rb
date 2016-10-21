# Method to add an item to a list
# input: item name and optional quantity
# steps: initialize a hash with the grocery list as a list of keys.
# iterate through array to update hash.
# output: return a string that tells what changed.
def add_item(our_list, item_name, quantity = 1)
  our_list[item_name] = quantity
  puts our_list
end

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# output: [array]
# steps:
  # use string methods to split the string input into an array and make the hash using the list as keys
  # print the hash to the console [use the method to print a list]
def grocery_list(item_string)
  items = item_string.split(" ")
  grocery = {}
  for item in items do
    add_item(grocery, item)
  end
  grocery
end

our_list = grocery_list("apple oranges cereal pizza")
# my_list = grocery_list(...)
# your_list = grocery_list(..)


# Method to remove an item from the list
# input: item name
# steps: search for the item name in the list.
# delete the item from the list.
# output: return a string that tells what changed.
def remove_item(our_list, item_name)
  our_list.delete_if {|key, value| key == item_name}
  puts our_list
end

# remove_item(our_list, "apple")

# Method to update the quantity of an item
# input: item name, new quantity
# steps: assign new value to item key in hash
# output: return a string that tells what changed
def update(our_list, item_name, quantity)
  our_list[item_name] = quantity
  puts our_list
end

# update(our_list, "oranges", 4)

# Method to print a list and make it look pretty
# input: hash
# steps: puts hash with #each using |key, value| for block parameter
# output: print string of hash

def print_list(our_list)
  our_list.each do |key, value|
    puts "#{key} : #{value}"
  end
end

add_item(our_list, "onion")
add_item(our_list, "lemonade", 2)
add_item(our_list, "tomatoes", 3)
add_item(our_list, "ice cream", 4)
remove_item(our_list, "lemonade")
update(our_list, "ice cream", 1)
print_list(our_list)