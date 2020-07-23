# Array#zip takes two arrays and combines them into a single array
# each element is a two-element array where the first value is from one array
#   second value is from the second array, in order.
# mimic this method
# assume both inputs have the same number of elements

Ex.
zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]

# zip method will take 2 arrays
# iterate through the first array with #map.with_index
# take the combine the element with the same indexed element of the seond arr

def zipper(arr1, arr2)
  arr1.map.with_index { |val, idx| [val] << arr2[idx] }
end
