# Write a method that takes a sorted array of ints as arg
# returns an array that includes all of the missing ints (in order)
# between the first and last arg

Ex.
missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
missing([1, 2, 3, 4]) == []
missing([1, 5]) == [2, 3, 4]
missing([6]) == []

def missing(sorted_arr)
  (sorted_arr.first..sorted_arr.last).to_a - sorted_arr
end

# or using #each_cons

def missing(array)
  result = []
  array.each_cons(2) do |first, second|
    result.concat(((first+1)..(second-1)).to_a)
  end
  result
end
