def iter
  puts "before block"
  3.times {yield("Marissa","Woojae")}
  puts "after block"
end

iter {|var1, var2| puts "Executing the block with #{var1} and #{var2}"}




letters= ["a", "b", "c", "d", "e"]
new_letters=[]

puts "Original"
p letters

letters.each do |letter|
  current= letter
  final= letters[-1]
  puts letter
  current = final
  new_letters<<current
end

puts "After"
  p letters
  p new_letters





letters=["a", "b", "c", "d", "e"]

puts "original"
  p letters

letters.map! do |letter|
  puts letter
  letter.next
  letter+"cats"
end

puts letters


#num=[3, 4, 5, 6, 7]
#puts num
#new_num=[]

def array_delete
  num=[3, 4, 5, 6, 7]
  new_num=[]
  new_num << num.each {num.delete_if{|x| x%2==0}}
  puts new_num
end

array_delete

def hash_delete
  my_hash = {
    "week1" => 1,
    "week2" => 2,
    "week3" => 3
  }
  new_hash={}
  new_hash = my_hash.delete_if{|x, y| y%2==0}

  puts new_hash
end

hash_delete


def diff_filter
  fruits = {
    "apple" => "green",
    "orange" => "orange",
    "strawberry" => "red",
    "banana" => "yellow"
  }

  new_fruits= {}
  fruits.each{|x, y| if x==y then new_fruits[x]=y end}
  puts new_fruits
end
diff_filter



def false_fruit
  fruit = {
    "apple" => "fruit",
    "orange" => "fruit",
    "burrito" => "not a fruit",
    "strawberry" => "fruit",
    "banana" => "fruit"
  }
  new_fruit = {}
  fruit.each{ new_fruit = fruit.delete_if{|x, y| y=="fruit"}}
  puts new_fruit
end
false_fruit