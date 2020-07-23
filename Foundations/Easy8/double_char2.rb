# Write a method that takes a string
# Returns a new string which every consonant double
# Vowels, digits, punctuations, and whitespace should not be doubled

# Initialize a constant for consonants
# Seperate chars into array, iterate through using #map
# If char matches any consonants then append onto char
# use array#join('') at the end

CONSONANTS = %w(q w r t y p s d f g h j k l z x c v b n m)

def double_consonants(string)
  string.chars.map do |char|
    CONSONANTS.include?(char.downcase) ? char * 2 : char
  end.join
end
