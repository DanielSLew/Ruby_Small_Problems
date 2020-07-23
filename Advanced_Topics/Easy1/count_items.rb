# Write a method that takes an array as an arg
# also takes a block that returns true or false depending on
#   value of array element passed to it
# method should return a count of the number of times block returns true

# do not use Array#count or Enumerable#count

# method will have 2 params, array and block
# iterate through the array, yielding to the block
# increase a count for each time the block returns true

require 'pry'

def count(collection)
  true_count = 0
  collection.each { |element| true_count += 1 if yield(element) }
  true_count
end

puts count([1,2,3,4,5]) { |value| value.odd? } == 3
puts count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
puts count([1,2,3,4,5]) { |value| true } == 5
puts count([1,2,3,4,5]) { |value| false } == 0
puts count([]) { |value| value.even? } == 0
puts count(%w(Four score and seven)) { |value| value.size == 5 } == 2