# 1. START - check if string is valid
# 2. Split the string up
# 3. Join the elements in decesending order
# 4. Return the results

def reverse_sentence(string)
  if string.is_a? String
    return string.split(' ').reverse.join(' ')
  else
    puts "Please enter a valid string!"
  end
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# 2nd time

# Write a method that takes one arg (string) returns new string with words in reverse order

# Examples:

# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# define a method named reverse_sentence with 1 parameter
# Use Array#split to seperate the string into words
# Use Array#reverse followed by #join(' ') to bring the words back together

def reverse_sentence(string)
  string.split.reverse.join(' ')
end
