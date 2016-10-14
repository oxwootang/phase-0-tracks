def iter
  puts "before block"
  3.times {yield("Marissa","Woojae")}
  puts "after block"
end

iter {|var1, var2| puts "Executing the block with #{var1} and #{var2}"}