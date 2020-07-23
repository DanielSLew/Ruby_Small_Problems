# Write a method that takes two array args which both arrays are numbers
# Return a new array that contains the product of each pair w/ the same idnex
# Assume they contain the same # of elements

# Use Array#transpose and then call Array#map on each pair
# Use Ennumerable#inject(:*) to get the product of the pair

def multiply_list(arr1, arr2)
  [arr1, arr2].transpose.map do |pair|
    pair.reduce(:*)
  end
end

def multiply_list(arr1, arr2)
  [arr1, arr2].transpose.map { |arr| arr.reduce(:*) }
end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.reduce(:*) }
end
