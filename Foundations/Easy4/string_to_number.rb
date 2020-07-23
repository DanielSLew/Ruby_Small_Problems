# - Define a method that takes a string input of numbers and converts
#   it to an integer, without using String#to_i or Integer().
# - Split string into an array
#   - Loop through each string digit to find it's integer value and return the array
# - Iterate through the reversed set of digits
#   - multiply each digit by 10 to the power of the index to get its position right.
#     - add to a new variable numbers
# - Return the new integer, numbers

HEXADECIMALS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
                 '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11,
                 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15 }

def string_to_digits(string)
  string.chars.map do |char|
    count = 0
    loop do
      break if char == "#{count}"
      count += 1
    end
    count
  end
end

def string_to_integer(string)
  digits = string_to_digits(string)
  number = 0

  digits.reverse!.each do |digit|
    number += (digit * (10**digits.index(digit)))
  end

  number
end

def hexadecimal_to_digits(hex)
  digits = hex.chars

  digits.map! do |digit|
    digit.upcase! if /[a-f]/ =~ digit
    HEXADECIMALS[digit]
  end
end

def hexadecimal_to_integer(hex)
  value = 0
  digits = hexadecimal_to_digits(hex)

  digits.reverse!.each do |digit|
    value += (digit * (16**digits.index(digit)))
  end

  value
end

puts hexadecimal_to_integer('4D9f') == 19871

# 2nd TRY ----------------------------------------------

# Write a method that converts a string representation of digits to the digits
# do not use #to_i or Integer()

# Examples:

string_to_integer('4321') == 4321
string_to_integer('570') == 570

# Initialize an array constant named NUMBERS where each index will point to it's appropriate string value
# Define a method named string_to_integer with 1 parameter(string)
# call #chars, #reverse, and #each on the string
# convert the digit to it's integer value by using NUMBERS.index(char)
# Multiple the integer by 10**num where num starts at -1 and increases by 1 at each iteration
# Call #sum on the return of #map.

NUMBERS = %w(0 1 2 3 4 5 6 7 8 9)

def string_to_integer(string)
  num = -1
  string.chars.reverse.map do |char|
    num += 1
    NUMBERS.index(char) * (10**num)
  end.sum
end

# Furhter exploration
# convert hex to integer

HEXADECIMALS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
                 '6' => 6, '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11,
                 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15 }

def hexadecimal_to_integer(hex)
  power = hex.length
  hex.chars.map do |digit|
    power -= 1
    HEXADECIMALS[digit.upcase] * (16 ** power)
  end.sum
end
