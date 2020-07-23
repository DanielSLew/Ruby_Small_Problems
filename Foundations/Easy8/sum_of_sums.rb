# Write a method that takes an array of nums
# Returns the sum of sums of each leading subsequence for that array
# Assume array always contains at least 1 num.

# - Initialize result variable
# - Use Ennumerable#reduce to sum up the numbers and add to result
# - use Array#pop! to get rid of the last element
# - call ennumerable#reduce again and repeat until all elements are summed

def sum_of_sums(arr)
  result = 0
  arr.size.times do
    result += arr.reduce(:+)
    arr.pop
  end
  result
end