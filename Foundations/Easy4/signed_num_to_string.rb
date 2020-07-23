# Define a method that prepends a + or - sign to the string number
# - Define a method integer_sign which returns the appropriate sign depending on the sign of the integer
# - in the loop, if the number is negative multiply it by -1 to make it positive
# - prepend the integer sign using the integer_sign method.

STRING_DIGITS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_sign(int)
  return '0' if int == 0
  int > 0 ? '+' : '-'
end

def signed_integer_to_string(int)
  digits = ''
  count = 0
  digits.prepend(integer_sign(int))
  int *= -1 if int < 0
  loop do
    break if int / 10**count == 0
    digits.insert(1, STRING_DIGITS[int / 10**count % 10])
    count += 1
  end
  digits
end

# FURTHER EXPLORATION

def integer_to_string(int)
  digits = ''
  loop do
    int, remainder = int.divmod(10)
    digits.prepend(STRING_DIGITS[remainder])
    break if int == 0
    rescue
  end
  digits
end

def signed_integer_to_string(int)
  sign = int < 0 ? '-' : '+'
  int *= -1 if int < 1
  return '0' if int == 0
  result = integer_to_string(int).prepend(sign)
end

# 2nd TRY

# Write a method that takes an integer and converts to a string representation
# if the number is positive add a '+', negative add a '-' to the front

# Examples:

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

NUMBERS = %w(0 1 2 3 4 5 6 7 8 9)

def integer_to_string(int)
  int.digits.map { |num| NUMBERS[num] }.join.reverse
end

# Write a method named signed_integer_to_string with 1 parameter(int)
# If the int is < 0 append a '-', if above 0 append a '+''
# Pass int#abs to integer_to_string

def signed_integer_to_string(int)
  result = integer_to_string(int.abs)
  return result if int == 0
  result.prepend(int > 0 ? '+' : '-')
end
