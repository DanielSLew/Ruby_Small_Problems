# - Define a method that takes a string as argument
# - if the string is the same forward and backwards return true
# - use String#reverse

def palindrome?(string)
  string == string.reverse
end

def palindrome_arr?(array)
  array.join == array.join.reverse
end

def palindromes?(input)
  (input == input.reverse) || (input.join == input.join.reverse)
  rescue
    return input == input.reverse
end

# 2nd TRY

# Write a method that returns true if the string passed as an arg is a palindrome
# False is not a palindrome
# Palindrome reads the same forward and backward
# Case does matter as does punctuation and spaces

# Examples:

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

# Define a method named palindrome? with 1 parameter(string)
# use #string#reverse and compare to the original string
# is a palindrome if it evaluates to true

def palindrome?(string)
  string.reverse == string
end

# Further exploration
# Write a method that determines if an array is palindromic

# Use the same methods from the previous palindrome? method

def palindrome?(array)
  array.reverse == array
end

# Now write a method that determines if either string or array is palindromic

def palindrome?(object)
  object.reverse == object
end