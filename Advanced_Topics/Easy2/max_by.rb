# Write a method that mimics Enumerable#max_by
# returns the element for which the block returned the largest value
# if empty should return nil

Ex.

max_by([1, 5, 3]) { |value| value + 2 } == 5
max_by([1, 5, 3]) { |value| 9 - value } == 1
max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
max_by([-7]) { |value| value * 3 } == -7
max_by([]) { |value| value + 5 } == nil

# keep track of the element with the highest return of the block
# if a block returns higher, replace the variable with the current element
# return the variable

def max_by(arr)
  return nil if arr.empty?
  max = [arr[0], yield(arr[0])]
  arr.each do |val|
    block_return = yield(val)
    max[0], max[1] = val, block_return if block_return > max[1]
  end
  max[0]
end