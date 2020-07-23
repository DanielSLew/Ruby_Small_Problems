# Define a method that takes an integer and uses that as the number
# of digits for the fibonacci number, it returns the first occurence of a
# number of that size. (ie. (2), the 7th iteration has 2 digits, so it returns 7)
# - initialize a count variable, to count how many iterations
# - start a loop that breaks when fib_size is == to integer
# - Calculate Fibonacci number
#   - Start current number at 1 and previous number at zero
#   - Current number = previous number + current number
#   - Increase count by 1
# Return the count once broken out of the loop

def find_fibonacci_index_by_length(length)
  count, current_num, previous_num = 1, 1, 1
  loop do
    break if current_num.to_s.size >= length
    new_num = current_num + previous_num
    previous_num = current_num
    current_num = new_num
    count += 1
  end
  length == 1 ? 1 : count + 1
end
