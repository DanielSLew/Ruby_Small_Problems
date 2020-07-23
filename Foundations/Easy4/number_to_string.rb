# Define a method that takes an integer and converts it to a string
#
# - Create a hash constant the include all the string representations of 0-9
# - Initialize a digits variable
# - Initialize a count starting from 0
# - loop through the integer digits using the hash
#   - Break the loop if number divided by 10 to the power of count is 0
#   - isolate the digits by using % and / and counting in powers of 10
#   - insert the digits to the start of the digit string
#   - return the digit string

DIGITS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
           5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(int)
  digits = ''
  count = 0
  loop do
    break if int / 10**count == 0
    digits.insert(0, DIGITS[int / 10**count % 10])
    count += 1
  end
  digits
end


p integer_to_string(422) == '422'

# 2nd TRY

# Write a method that takes a positive int or 0 and converts it to a string representation
# Do not use #to_s, String() or #format

# Exmaples:

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

NUMBERS = %w(0 1 2 3 4 5 6 7 8 9)

# Initialize an array constant NUMBERS, 0-9
# Define a method integer_to_string with 1 parameter(int)
# Call #digits and then #map
# inside the block passed to map reference NUMBERS[int] to convert to string
# call #join and #reverse to get the correct number

def integer_to_string(int)
  int.digits.map { |num| NUMBERS[num] }.join.reverse
end
