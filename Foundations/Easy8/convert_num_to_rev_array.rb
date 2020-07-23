# Write a method that takes positive int as an arg
# Returns that num with digits reversed
# No leading 0's

# Initialize a result_num
# Initialize a count start from 0
# Call Integer#digits on the number to get a reversed array
# Iterate through the digits backwards
# If the number is 0 and the count is 0, next
# Else add num * 10**(count) to result_num
# Increase count by 1 after each iteration
# return the result

def reversed_number(int)
  result_num, count = 0, 0
  int.digits.reverse.each do |num|
    num.zero? && count.zero? ? next : result_num += (num * 10**(count))
    count += 1
  end
  result_num
end

def reversed_number(int)
  int.to_s.reverse.to_i
end
