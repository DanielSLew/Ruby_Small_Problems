# Write a method that mimics Enumerable#map

Ex.

map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
map([]) { |value| true } == []
map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]

map({'a' => 1, 'b' => 2, 'c' => 3}) {|key, val|  }

# method #map will take 1 array, and a block
# we will iterate through the array with each with object ([])
# after every iteration we will push the return value of the block to the object

def map(arr)
  arr.each_with_object([]) { |val, array| array << yield(val) }
end