# Write a method that takes a matrix of arrays (array of arrays)
# Transpose the matrix, meaning the first row becomes the first column, etc.
# Do not modify the original matrix, produce a new matrix
# Do not use Array#transpose or the Matrix class from the standard lib

# Examples:

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = [
   [1, 4, 3]
   [5, 7, 9]
   [8, 2, 6]
   ]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

# Initialize a new_array with the same number of arrays as the matrix, Array#new(n, [])
# Iterate through the matrix to get to the arrays
# Iterate through arrays with #each_with_index
#   Add the elements to the new_array using this format
#     new_array[index] << array[index]

def transpose(matrix)
  matrix.each_with_object(Array.new(matrix.size) {Array.new}) do |arr, new_arr|
    arr.each_with_index { |value, index| new_arr[index] << value }
  end
end

# Further exploration
# Write a method transpose! that mutates the matrix passsed in
# Use the same approach, but instead use matrix[index][index] = to reassign specific values
# No need to create a new_array object with #each_with_object
#   Instead, need to call each_with_index twice to be able to target a specific value in the matrix

def deep_copy(obj)
  Marshal.load(Marshal.dump(obj))
end

def transpose!(matrix)
  deep_copy(matrix).each_with_index do |arr, index| 
    arr.each_with_index { |value, i| matrix[i][index] = value }
  end
end



