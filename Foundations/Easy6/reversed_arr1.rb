#Define a method that takes an array as an argument, reverse its elements
#Return value should be the same array object, do not use reverse or reverse!
# - Take the array and take the length of the array times to iterate through
#   - each iteration use Array#unshift(Array#pop)
#     - This will take an element from the end of the array and put it to the start
# - Return the array at the end

def reverse!(arr)
  index = 0
  (arr.length).times do
    arr.insert(index, arr.pop)
    index += 1
  end
  arr
end
