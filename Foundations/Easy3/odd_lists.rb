# - Define method that takes an array
# - Iterate over the array to make a new array
#   - skip over every other iteration
#   - use a counting method to achieve this
# - If array is empty return an empty array

def oddities(arr)
  count = -1
  new_arr = []
  loop do
    count += 1
    break if (count >= arr.length) || arr.empty?
    next if count.odd?
    new_arr << arr[count]
  end
  new_arr
end

def evens(arr)
  count = 1
  even_arr = []
  while arr.length > count
    even_arr << arr[count]
    count += 2
  end
  even_arr
end

def evens_alt(arr)
  new_arr = []
  arr.each_with_index do |value, index|
    new_arr << value if index.odd?
  end
  new_arr
end

def evens_alt2(arr)
  new_arr = []
  while arr.length > 0
    arr.length.odd? ? arr.pop : new_arr << arr.pop
  end
  new_arr.reverse
end

puts evens_alt([2, 3, 4, 5])

# 2nd TRY

# Write a method that returns an array
# Contains every other element of an array that is passed as an argument
# the values in the returned list should be those odd number elements of the argument array

# Examples:

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

# Define a method named oddities with 1 parameter (array)
# Initialize an index variable and assign it to -1
# Call #select on array and name the parameter val with a block passed to it
# Inside the block increment index by 1
# on the final line in the block use the implicit truthy return of index.even?


def oddities(array)
  index = -1
  array.select do |_| 
    index += 1
    index.even?
  end
end

# We have to use the opposite call in the block, because the 1st array is even index
# while the 2nd element is actually an odd index.

def evens(array)
  index = -1
  array.select do |_|
    index += 1
    index.odd?
  end
end

# Further exploration

def odds_and_evens(array)
  numbers = {}
  odd = false
  numbers[:odd], numbers[:even] = array.partition { |_| odd = !odd }
  numbers
end

def evens(array)
  odd = true
  array.select { |_| odd = !odd }
end
