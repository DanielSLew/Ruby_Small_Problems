# Write a method that takes a matrix and rotates it 90 degrees

# Examples:

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

# Define a method rotate90 that takes 1 argument (matrix)

def rotate90(matrix)
  matrix.each_with_object([]) do |arr, new_matrix|
    arr.each_with_index do |value, index|
      new_matrix.fetch(index) rescue new_matrix << []
      new_matrix[index].unshift(value)
    end
  end
end

def rotate_matrix(matrix, rotation)
  (rotation/90).times {matrix = rotate90(matrix)}
  matrix
end
