# frozen_string_literal: true
def sum(array)
  index = 0
  sum = 0
  while index < array.length
    sum += array[index]
    index += 1
  end
  sum
end

def sum_recursive(array)
  length = array.length
  if length == 1
    array[0]
  else
    array[0] + sum_recursive(array.slice!(1, length))
  end
end

puts sum_recursive([1, 2, 3, 4])