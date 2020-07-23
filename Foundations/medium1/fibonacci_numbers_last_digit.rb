# Write a method that returns the last number of nth fibonacci sequence

# Use the procedural fibonacci method
# convert the return to a string, take the last index and convert back to integer

def fibonacci_last(n)
  n = n % 1000
  last_2 = [1, 1]
  3.upto(n) do
    last_2 = [last_2.last, (last_2.last + last_2.first) % 10]
  end
  last_2.last
end

# Taken from Someone elses solution

def last_fib_digit_array_generator(n)
  fib1, fib2 = 0, 1
  fib_array = []

  n.times do
    fib_array << fib2.digits[0]
    fib1, fib2 = fib2, fib1 + fib2
  end

  fib_array
end

# This gets an array of last digit fibonacci numbers

def fib_pattern_calc(big_num)
  comparison_array = []
  last_digits = last_fib_digit_array_generator(big_num)

  last_digits.each_with_index do |n, index|
    if last_digits[index...index + comparison_array.size] == comparison_array &&
      comparison_array.size > 1
      return comparison_array
    end
    comparison_array << n
  end
end

# Taking the comparison of last digit nums, 2 lengths away, 3 lengths away, etc.
# Returns an array when x lengths away returns true.

