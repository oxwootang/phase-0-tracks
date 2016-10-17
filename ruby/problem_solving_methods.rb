def int_search(int_arr, to_find)
  if int_arr.include? !to_find
    return nil
  else
    length = int_arr.length
    count = 0
    while count < length
      if int_arr[count] == to_find
        return count
      else
        count += 1
        next
      end
    end
  end
end

# p int_search([0, 1, 2, 5, 6, 10], 3)
# p int_search([0, 1, 2, 5, 6, 10], 6)

<<<<<<< HEAD
# I chose to research bubble sort. It works visually like bubbles rising to the surface. It sorts by making adjacent comparisons in an array and repeating the process until all the components are in the correct order in the array.
# The visualization in http://www.algolist.net/Algorithms/Sorting/Bubble_sort helped me understand it immediately.
# I felt excited and curious because it was cool to find a (although inefficient-order of n^2) method that works so logically.
# Def sorting_method (array of integers)
#   to sort in decreasing order, check index 0 and 1 of the array for the greater integer; if index 0 > 1 (the correct order), move on to check index 1 and 2, and so on until the first sweep is done. then repeat until every number is in order.

# My bubble_sort search method doesn't work yet. I'm working on finding a solution to how the method can know if all the elements are properly sorted. A boolean would store this variable, and when it is true it would be done sorting. But I don't know when/where/how in my code to implement an algorithm that would check if the list was done.

def bubble_sort(int_array)
  to_return = int_array
  length = to_return.length
  for i in 0..length-1
    count = 0
    while count < length - 1
      if to_return[count] > to_return[count+1]
        count += 1
      else
        switch = to_return[count]
        to_return[count] = to_return[count+1]
        to_return[count+1] = switch
        count += 1
      end
    end
=======
def fib(terms)
  start = 2
  to_return = [0, 1]
  while start < terms
    to_return << to_return[start-1] + to_return[start-2]
    start += 1
>>>>>>> 911f7235f01a1d1293492ed9bda395795e0285a2
  end
  return to_return
end

<<<<<<< HEAD
p bubble_sort([1,5,6,3])
=======
p fib(6)
p fib(100)[-1]
>>>>>>> 911f7235f01a1d1293492ed9bda395795e0285a2
