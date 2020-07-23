# Write a method that takes string arg
# Returns an array containing every word from the string
# append a space and the word length to each element
# Assume that words in string are separated by exactly one space

# use String#split to get an array of words
# Use Array#map and then append a space and the word length to each element

def word_lengths(string)
  string.split.map { |word| word << " #{word.size}" }
end