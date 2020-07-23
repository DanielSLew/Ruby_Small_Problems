# Write a method that takes a single String arg
# Returns a new string that contains original value of arg
# Capitalize first character of every word and downcase all other letters

# - Use String#split to separate the string into an array of words
# - Iterate through the array with Array#map
# - use #capitalize and then join(' ')

def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

def word_cap(string)
  string.split.map do |word|
    word = word.downcase
    word.gsub(word[0], word[0].upcase)
  end.join(' ')
end

def word_cap(string)
  string.split.map do |word|
    word.chars.map do |char|
      char == word[0] ? char.upcase : char.downcase
    end.join('')
  end.join(' ')
end
