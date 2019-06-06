my_list = [1, 3, 5, 7, 9]
my_item = 7

def simple_search(list, item)
  index = 0
  high = list.length - 1

  while index <= high
    guess = list[index]
    if guess == item
      return index
    else
      index += 1
    end
  end
end

def binary_search(list, item)
  low = 0
  high = list.length - 1

  while low <= high
    mid = (low + high) / 2
    guess = list[mid]
    if guess == item
      return mid
    elsif guess > item
      high = mid - 1
    else
      low = mid + 1
    end
  end
end

puts simple_search(my_list, my_item)
puts binary_search(my_list, my_item)