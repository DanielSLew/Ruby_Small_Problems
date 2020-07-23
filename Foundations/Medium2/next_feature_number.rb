# Write a method that takes an integer as an arg
# Find the next featured number that is larger than the arg
# A featured number is an odd number, divisible by 7 and each digit is unique
# Return error if there is no next featured number

# Initialize a result number to empty
# Initialize a loop
# Increase the argument number with Integer#next
# Run the arg through the 3 tests, Integer#odd?, % 7 == 0, & Integer#digits.uniq.size == Integer#digits.size
# If the test takes too long run Time.timeout(number of seconds) and raise an error message
# If it passes those 3 tests add the number to the reuslt number and break the loop
# Return the number or return an error message if result is empty

require 'timeout'

def featured(num)
  result = 0
  begin
    Timeout.timeout(10) do
      loop do
        num += 1
        if num.odd? && num % 7 == 0 && num.digits.uniq == num.digits
          result = num
          break
        end
      end
    end
  rescue
  end
  result.zero? ? "There is no possible featured number!" : result
end

puts featured(20)
puts featured(999_999)
puts featured(999_999_987)
puts featured(9_999_999_999)
    
