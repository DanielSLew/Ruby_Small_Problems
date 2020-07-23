# Define a method that takes a string of words and returns the word count in a hash
#   spaces separate words (so include '.', ''', '!', etc. in word length)
# Initialzie a new hash, word_counts
# use String#split to create an array of words
# iterate through the array, use String#length to figure out the word length
#   use 'if hash[length] then hash[length] += 1' else hash[length] = 1
#     this ensures that if count for that length exists to just add to it.
# return the hash

def word_sizes(words)
  word_count = Hash.new(0) #this initializes default values as 0

  words.split.each do |word|
      word_count[word.length] += 1
  end

  word_count.sort.to_h
end

def word_sizes(str)
  str.split.each_with_object(Hash.new(0)) { |word, sizes| sizes[word.size] += 1 }
end
