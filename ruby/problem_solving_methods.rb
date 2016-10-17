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

def fib(terms)
  start = 2
  to_return = [0, 1]
  while start < terms
    to_return << to_return[start-1] + to_return[start-2]
    start += 1
  end
  return to_return
end

p fib(6)
p fib(100)[-1]