# - Define a method that takes a positive integer as input
# - the input is used as the upper limit with 1 being the lower limit
# - Use Integer#upto and add the numbers divisible by 3 or 5 to an array
# - use Array#sum to calculate the sum of those numbers

def multisum(limit)
  nums = []
  1.upto(limit) { |num| nums << num if (num % 3 == 0 || num % 5 == 0)}
  nums.sum
end

def multisum_alt(limit)
  (1..limit).select { |num| num % 3 == 0 || num % 5 == 0 }.reduce(:+)
end

# 2nd TRY

# Write a method that search for all multiples of 3 or 5
# the numbers must lie between 1 and some other number
# compute the sum of all those multiples

# Examples:

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

# Write a method named multisum with 1 parameter(num)
# call select on (1..num).to_a and pass in a block that is true if divisible by 3 or 5
# Initialize variable 3s_and_5s and assign it to the previous select method
# use #sum to add up the numbers

def multisum(num)
  (1..num).to_a.select { |n| n % 3 == 0 || n % 5 == 0 }.sum
end
