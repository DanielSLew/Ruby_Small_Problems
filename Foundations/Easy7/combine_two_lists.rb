# Write a method that combines two arrays as an arg, returns a new array
# with both arrays alternating their elements.
# - Create a new array - ake the first array and clone it
# - initialize an index starting at 1
# - iterate through array2 using Array#each
#   - use Array#inject(index, element)
#   - Incrase index by 2
# - return the new array

def interleave(arr1, arr2)
  arr = arr1.dup
  index = 1

  arr2.each do |value|
    arr.insert(index, value)
    index += 2
  end

  arr.compact
end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end
