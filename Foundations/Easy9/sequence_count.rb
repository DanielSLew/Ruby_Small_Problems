# Write a method that takes two ints as args
# First arg is a count, second is first num of sequence
# Return an array that contains the same num of elements as count arg
# Values will be multiples of the starting number
# Assume count will always be 0 or greater, starting num can be any num

# Initialize an array with 4 elements
# Use Array#map and multiple each value by num *= 2

def sequence(count, num)
  result = 0
  Array.new(count).map {|_| result += num }
end
