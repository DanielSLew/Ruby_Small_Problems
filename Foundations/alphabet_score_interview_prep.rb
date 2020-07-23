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
#   By all letters will be lowercase and all inputs valid, that means we don't need to account for either?

# Create a constant array for alphabet scores (index +1 will be the score)
# Create an empty hash (with default value of 0) that will contain 'word' => score
# Split up sentence into words, add word to hash as a key
# Split up each word into characters
#   # Use #map to turn letter into a score and then sum it up and add to appropriate key in hash
# Find the highest scores with scores#values#max and pass that value as an argument to scores#key

ALPHABET = ('a'..'z').to_a

def alphabet_score(string)
  scores = string.split.each_with_object({}) do |word, hash| 
             hash[word] = word.chars.map { |char| ALPHABET.index(char) + 1 }.sum
           end

  scores.key(scores.values.max)
end

def alphabet_score(string)
  string.split.max_by {|word| word.chars.map { |char| ALPHABET.index(char) + 1 }.sum }
end
