# - Define a method that takes an array of numbers as input
# - Create an empty array for running_totals
# - iterate through the array
#   - add the sum to running_totals
#   - add the next number to the sum 
# - Return the new array of totals
#   - Should have the same number of elements as original array.

def running_total(arr)
  running_totals = []
  sum = 0
  arr.each do |num|
    sum += num
    running_totals << sum
  end
  running_totals
end

def running_total(arr)
  sum = 0
  arr.each_with_object([]) { |num, totals| totals << (sum += num) }
end

def running_total(arr)
  totals = []
  loop do
    totals << arr.reduce(:+)
    arr.pop
    break if arr.empty?
  end
  totals.reverse
end

# 2nd TRY

# Write a method that takes an array of numbers
# returns an array with the same number of elements
# each element has the running total from the original array

# Examples:

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

# Write a method named running_total with 1 parameter(array)
# Initialize a variable sum and set it to 0
# call #map on array with parameter val and use sum += val inside the block

def running_total(array)
  sum = 0
  array.map { |val| sum += val }
end

# Further Exploration
# Solve using #each_with_object or #inject

def running_total(array)
  sum = 0
  array.each_with_object([]) { |val, array| array << (sum += val) }
end

