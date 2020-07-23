# Create a method that mimics Enumerable#drop_while
# it will stop iterating when it finds a false or nil, 
# it will return the current element and all consecutive elements in a new arr
# i.e. it will drop all elements that are true at the start

# Iterate through with an index
# when it returns false or nil then return the array[current_idx..-1]

Ex.

drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
drop_while([1, 3, 5, 6]) { |value| true } == []
drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
drop_while([]) { |value| true } == []

def drop_while(arr)
  arr.each_with_index {|val, idx| return arr[idx..-1] unless yield(val)}
  []
end