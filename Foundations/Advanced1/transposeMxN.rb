# Modify transpose method from previous exercise so it works with any matrix
# with at least 1 row and 1 column

# Examples:

transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
transpose([[1]]) == [[1]]

def transpose(matrix)
  matrix.each_with_object([]) do |arr, new_matrix|
    arr.each_with_index do |value, index| 
      new_matrix.fetch(index) rescue new_matrix << []
      new_matrix[index] << value
    end
  end
end

# My two solutions were fairly similar, I think I assumed that the matrix
# could be any XxX size to begin with, so the only thing I could to acccount for
# in this solution was not creating the Array fully populated with Arrays when calling #each_with_object
