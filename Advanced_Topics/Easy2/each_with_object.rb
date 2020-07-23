# Write a method that mimics Enumerable#each_with_object
# pass each element and arbitrary obj (usually a collection) to the block
# the object is defined by a variable passed to the method
# the object may be updated by the block
# final value of the object is returned

Ex.

result = each_with_object([1, 3, 5], []) do |value, list|
  list << value**2
end
result == [1, 9, 25]

result = each_with_object([1, 3, 5], []) do |value, list|
  list << (1..value).to_a
end
result == [[1], [1, 2, 3], [1, 2, 3, 4, 5]]

result = each_with_object([1, 3, 5], {}) do |value, hash|
  hash[value] = value**2
end
result == { 1 => 1, 3 => 9, 5 => 25 }

result = each_with_object([], {}) do |value, hash|
  hash[value] = value * 2
end
result == {}

# each_with_object will have 2 params, an array and an object
# iterate with each and pass the value and object to the block
# return the object at the end

def each_with_object(arr, obj)
  arr.each { |value| yield(value, obj) }
  obj
end
