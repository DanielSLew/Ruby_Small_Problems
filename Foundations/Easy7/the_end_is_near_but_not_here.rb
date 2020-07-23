# Write a method that returns the next to last word in the String arg
# Words are any sequence of non-blank chars
# Assume input String will always contain at least two words

# Use Array#split to split the words
# Use Array[-2] to return the second last word

def penultimate(string)
  string.split[-2]
end

# To return the middle word of a phrase or sentence
#   Wht happens when there is no middle?
#   If no input is given, return an empty string
#   Do we include non-characters in the string?

def middle(string)
  mid = (string.split.size/2.0)
  return '' if string.empty?
  (mid % 1 == 0) ? (puts "There is no middle!") : string.split[-mid.round]
end
