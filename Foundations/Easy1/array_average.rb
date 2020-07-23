# START accept an array of int
# check to make sure array is not empty
# check to make sure array is all positive ints
# add all the ints togethers
# divide by the length of the array
# return the result

def valid_array(arr)
  return 'Empty array!' if arr == arr.empty?
  count = 0
  loop do
    valid = arr[count] > 0 && arr[count].to_s.to_f == arr[count]
    break if valid ^ true || count + 1 == arr.length
    count += 1
  end
  count + 1 == arr.length
end

def average(arr)
  return 'Error' unless valid_array(arr)
  sum = 0
  arr.each { |num| sum += num }
  sum / arr.length
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# Num 2

# Write a method that takes one argument, an arry containing integers
# return the average of all the numbers in the array
# Array will never be empty and the numbers always positive

# Examples:

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# define a method average with 1 parameter
# use Ennumeable#reduce(:+) to sum the numbers then divide by array.length

def average(array)
  array.reduce(:+).fdiv(array.length)
end
