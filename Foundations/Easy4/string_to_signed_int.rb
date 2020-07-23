# - Define a method that add to the previous methods to include a '+' or '-' at the beginning
# - Shift the first character if it starts with a '+' or '-' and make a new variable (int_sign)
#   to save if the digit will be positive or negative (-1 for neg and 1 for pos)
# - Use previous method to change string to int
#   - use the previously saved variable to put the necessary sign on the integer
require 'pry'

DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
           '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_digits(string)
  string = string.chars
  string.slice!(0) if %w(+ -).include?(string[0])
  string.map! do |char|
    DIGITS[char]
  end
end

def integer_sign(string)
  string.start_with?('-') ? -1 : 1
end

def string_to_signed_integer(string)
  int_sign = integer_sign(string)
  digits = string_to_digits(string)
  number = 0
  index = -1

  digits.reverse!.each do |digit|
    index += 1
    number += (digit * (10**index)
  end

  number * int_sign
end


puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100

# 2nd TRY

# Use the method from the previous exercise
# If string has a leading '+' it is positive num, '-' it is negative num

NUMBERS = %w(0 1 2 3 4 5 6 7 8 9)

#Examples:

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

# Check if the string starts with '-' if it does the num is negative
# Initialize a variable named sign and assign it -1 if the string starts with '-'
#   Otherwise leave it at 1
# use delete to delete all non numeric characters "^0-9"
# on the final line multiply by variable sign

def string_to_signed_integer(string)
  sign = string.start_with?('-') ? -1 : 1
  num = -1
  string.delete! "^0-9"
  string.chars.reverse.map do |char|
    num += 1
    NUMBERS.index(char) * (10**num)
  end.sum * sign
end

# Furhter exploration
# Modify the following to only call string[1..-1] and string_to_integer only once each

def string_to_signed_integer(string)
  sign = string.start_with?('-') ? -1 : 1
  string_to_integer(string.delete("^0-9")) * sign
end

