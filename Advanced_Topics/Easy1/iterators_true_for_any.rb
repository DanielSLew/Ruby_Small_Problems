# Write a method any? that mimics Ennumerable#any?
# Returns true if any of the collection returns true in the block
# Stop processing elements as soon as the block returns true
# an empty array should always return false

# write a method any? that takes an array and yields to a block
# if yield(element) returns true, stop the iteration.

def any?(array)
  array.each { |element| return true if yield(element) }
  false
end
