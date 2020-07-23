# This method that is supposed to remove negative words from sentences fails
# fix the following code so it works

def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# # Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# Because you are changing the calling object, and the way Array#each works is that it goes
# through the array according to index. If you delete a value, it'll essentially skip the following
# value because the following value now populates the spot where the previous value was, therefore having the same index.

# to fix this we can create a new array and populate it with only words that are !negative?

def neutralize(sentence)
  neutral_sentence = []
  sentence.split.each do |word|
    neutral_sentence << word if !negative?(word)
  end

  neutral_sentence.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')

