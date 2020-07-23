# Define a method that takes an array as an argument and returns 2 arrays
# as a pair of nested arrays, half in the first(extra if odd #), half in the second
# - Use partition to seperate the arrays in half, using Array#length to determine
#   # of elements in array rounding up for nearest whole number.
# - add both the partitioned arrays to an array

def halvsies(arr)
  elements = (arr.length / 2.0).round
  arr.partition { |value| arr.index(value) < elements }
end
