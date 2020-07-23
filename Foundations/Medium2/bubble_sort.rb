# Write a method that takes an array as an arg
# Bubble sort the array
#   This means that you sort array[0] > array[1], and if true swap them
#   Then move onto array[1] > array[2], etc.
#   When you get to the end repeat the process
#   Continue until the entire array is iterated without changes

# Define a method (compare) for just array[0] > array[1] that takes an array of two values
# Initialize an index starting at 1
# array_start = array.dup
# Start a loop that breaks if array start equals array
# Loop through the array using for i in array[1]..array[-1]
#   pass each iteration through compare by using the index and index-1
#   If true, then array[index-1], array[index] = array[index], array[index-1]
#   Increase index by 1

def bubble_sort!(arr)
  loop do
    array_start = arr.dup

    1.upto(arr.size-1) do |i|
      arr[i-1], arr[i] = arr[i], arr[i-1] if arr[i-1] > arr[i]
    end

    break if array_start == arr
  end
end

# Further exploration using tail end optimization

def bubble_sort!(arr)
  n = arr.size
  until n <= 1 do
    newn = 0
    for i in (1..n-1) do
      if arr[i-1] > arr[i]
        arr[i-1], arr[i] = arr[i], arr[i-1]
        newn = i
      end
    end
    n = newn
  end
end

array = (1..50).to_a.sample(50)
sort_array = array.sort
bubble_sort!(array)
puts array == sort_array
