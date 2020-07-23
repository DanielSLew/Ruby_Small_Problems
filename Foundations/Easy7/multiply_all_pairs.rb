# Write a method that takes two array args
# Each arr contains a list of nums
# Return a new Array that contains product of every pair
# Sort the results by increasing value

# Initialize a new array to hold the products
# Iterate through the first array with Array#each
# Iterate through the each digit with the second array
# add each product pair to the new array
# use Array#sort

def multiply_all_pairs(arr1, arr2)
  products = []
  arr1.each do |num1|
    arr2.each do |num2|
      products << num1 * num2
    end
  end
  products.sort
end

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |num| num.reduce(:*) }.sort
end