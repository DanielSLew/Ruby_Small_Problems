# Define a method that takes an array, returns new array with elements
# in reverse order, do not modify original list
# - initialize a new variable, reversed_arr = []
# - initialize an index starting at -1
# - iterate through the array the length of the array # of times
#   - use array[index] to add the last digit to the new array
#   - decrease the index by 1, iterating through array backawards
# return the new array

def reverse(arr)
  reversed_arr = []
  index = -1
  (arr.length).times do
    reversed_arr << arr[index]
    index -= 1
  end
  reversed_arr
end

def reverse(arr)
  arr.each_with_object([]) { |value, array| array.unshift(value) }
end
