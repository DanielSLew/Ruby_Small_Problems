# Sort an array of passed in values using merge sort
# Assume the array only contains one type of data
# Merge sort: Recursive sorting algorithm breaking down array elements into
#   nested sub-arrays, then recombining those nested sub-arrays in sorted order
# I.E. breaking into nested sub-arrays
[9, 5, 7, 1] ->
[[9, 5], [7, 1]] ->
[[[9], [5]], [[7], [1]]]
# then we work our way back to a flat array
[[[9], [5]], [[7], [1]]] ->
[[5, 9], [1, 7]] ->
[1, 5, 7, 9]

# Split up the arrays using 


def merge(arr1, arr2)
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