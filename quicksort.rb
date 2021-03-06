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

def max_number(array)
  length = array.length
  expected_max = array[0]
  if length == 1
    expected_max
  else
    max_num = max_number(array.slice!(1, length))
    if expected_max > max_num
      expected_max
    else
      max_num
    end
  end
end

def quick_sort(array)
  if array.length < 2
    array
  else
    pivot = array[0]
    less = []
    greater = []
    array.each do |element|
      if element < pivot
        less << element
      elsif element > pivot
        greater << element
      end
    end

    quick_sort(less) + [pivot] + quick_sort(greater)
  end
end

puts quick_sort([3, 1, 7, 5])
# puts max_number([1, 7, 3, 4])
# puts sum_recursive((1..10).to_a)