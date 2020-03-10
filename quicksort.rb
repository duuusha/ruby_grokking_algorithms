sample_array = [2, 5, 7]

def sum(array)
  index = 0
  sum = 0
  while index < array.length
    sum += array[index]
    index += 1
  end
  sum
end

puts sum(sample_array)