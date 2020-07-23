# - Define a method that takes a string as an argument
# - Return true is argument is a palindrome
#   - Palindrome should be case insensitive use String#downcase
#   - Definition should ignore numbers
#     - use gsub to delete numbers

def alphanumeric(char)
  %w(a b c d e f g h i j k l m n o p q r s t u v w x y z 1 2 3 4 5 6 7 8 9 0).include?(char)
end

def real_palindrome?(string)
  new_string = ''
  string.downcase.chars.each { |char| new_string << char if alphanumberic(char) }
  new_string == new_string.reverse
end

def real_palindrome_alt?(string)
  string = string.downcase.delete('^a-z0-9')
  string == string.reverse
end

puts real_palindrome?('madam')
puts real_palindrome?('Madam')
puts real_palindrome?("Madam, I'm Adam")
puts real_palindrome?('356653') 
puts real_palindrome?('356a653') 
puts real_palindrome?('123ab321')

# 2nd TRY

# Write a method that returns true if string passed as an arg is palindromic
# Method should be case-insensitive, and ignore all non-alphanumeric characters
# You can use the previous palindrome? method

# Examples:

real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false

# Define a method named real_palindrome? with 1 parameter(string)
# call #downcase and #delete on string and pass in a regex referencing non alphanumeric characters to it
# call palindrome? on the new string

def palindrome?(string)
  string.reverse == string
end

def real_palindrome?(string)
  palindrome?(string.downcase.delete "^a-z0-9")
end