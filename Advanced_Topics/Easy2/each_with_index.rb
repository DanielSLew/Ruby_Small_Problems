# Write a method that mimics Enumerable#each_with_index
# passes each val and index to the block

# Ex.

result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]
# should output:

# 0 -> 1
# 1 -> 3
# 2 -> 36
# true

# create a counter to rep the index
# iterate through the collection passing both index and value to the block
# increase the index by 1 after each iteration

def each_with_index(arr)
  index = 0
  arr.each do |value|
    yield(value, index)
    index += 1
  end
end
