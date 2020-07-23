# Write a method that takes two sorted Arrays as arguments
# Returns a new Array that contains all elements from both arguments in sorted order
# You may not provide any solution that retures you to sort the result array
# Build the result array one element at a time
# your solution should not mutate the input arrays

# Examples

merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]

# Initialize an empty array for results
# Compare the results of the first elements of both arrays
# Add the smaller one to the results, if the same, add the first one
# delete the first item from the array that you took the element from and assign it to a new_array_x
# keep doing this until both arrays are empty

def merge(arr1, arr2)
  results = []
  size = arr1.size + arr2.size

  loop do 
    case arr1[0] <=> arr2[0]
    when nil
      if arr1.empty? 
        results << arr2[0] 
        arr2 = arr2[1..-1]
      else 
        results << arr1[0]
        arr1 = arr1[1..-1]
      end
    when -1 || 0
      results << arr1[0]
      arr1 = arr1[1..-1]
    when 1
      results << arr2[0]
      arr2 = arr2[1..-1]
    end
    break if results.size == size
  end
  results
end

def merge_alt(arr1, arr2)
  arr2.each_with_object(arr1.clone) do |val2, results|
    return arr2 if results.empty?

    results.each_with_index do |val1, index1|
      if val2.between?(val1, results[index1 + 1])
        results.insert((index1 + 1), val2)
        break
      end
      results << val2 if index1 == results.size - 1 || val2 < results[0]
    end
  end
end
