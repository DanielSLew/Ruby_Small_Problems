# Define a method that takes two arrays as args returns an array with only unique values
# - Combine both arrays using #<< and then flatten the result
# - use Array#uniq to return only unique values

def merge(arr1, arr2)
  arr1 << arr2
  arr1.flatten(1).uniq
end

def merge(arr1, arr2)
  arr1 | arr2
end
