# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to it's position in the alphabet:
# a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original string.

# All letters will be lowercase and all inputs will be valid.

p alphabet_score('man i need a taxi up to ubud') == 'taxi'
p alphabet_score('what time are we climbing up the volcano') == 'volcano'
p alphabet_score('take me to semynak') == 'semynak'
p alphabet_score('aa b') == 'aa'

# Questions:
#   Do we need to account for non alphabet characters?

# Create a constant array for alphabet scores (index +1 will be the score)
# Create an empty hash (with default value of 0) that will equal 'word' => score
# Split up sentence into words, add word to hash as a key
# Split up each word into characters
#   # Use #map to turn into letter into a score and then sum it up and add to appropriate key in hash

ALPHABET = ('a'..'z').to_a

def alphabet_score(string)
  scores = Hash.new(0)
  string.split.each do |word| 
    # scores[word] = 0
    # word.chars.map { |char| char += }

  end
end

