# Write a method that mimics Enumerable#each_cons
# iterates over the members of a collection taking each sequence of n
#   consecutive elements at a time and passing them to the associated block
# returns a value of nil

# write a method that takes 2 consecutive elements at a time and passes to block

Ex.

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
result == nil
hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
hash == {}
result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
hash == {'a' => 'b'}
result == nil

# write a method #each_cons that will take 1 array
# iterate with #upto, excluding the last element, take the current element and the index +1
# 

def each_cons(arr)
  arr[0..-2].each_with_index { |value, idx| yield(arr[idx..idx+1]) }
  nil 
end
