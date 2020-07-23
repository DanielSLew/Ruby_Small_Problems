# START write method to take 1 int
# check to see if int is positive
# split the number into separate digits
#   convert digit to string, separate string, and convert
#   back to int
# sum those digits up

def valid_int(int)
  int > 0 && int.to_s.to_i == int
end

def sum(int)
  return 'Please put a positive interger!' unless valid_int(int)
  str_int = int.to_s.split('')
  sum = 0
  str_int.each { |num| sum += num.to_i }
  sum
end

def sum_alt(int)
  return 'Please put a positive interger!' unless valid_int(int)
  int.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

puts sum_alt(23) == 5
puts sum_alt(496) == 19
puts sum_alt(123_456_789) == 45

# NUM 2


# Write a method that takes one argument (positive integer)
# Return the sum of its digits

# Examples:

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Define a method named sum with 1 parameter(num)
# Call Integer#digits on local variable num
# Call reduce on the return of that to sum up the array

def sum(num)
  num.digits.reduce(:+)
end
