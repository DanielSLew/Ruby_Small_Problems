# Define a method that excludes non-letters when determining word size
# Use previous word_sizes method
#   Add in String#delete to keep only a-zA-z characters and spaces.

def word_sizes(words)
  word_count = Hash.new(0)
  words = words.delete "^a-zA-Z "

  words.split.each do |word|
      word_count[word.length] += 1
  end

  word_count.sort.to_h
end
