# Write a method that takes a text file as input
# The method will find the longest sentence in the text and return the sentence
# Sentences end in . ! or ?
# Anything that is not a space or a sentence-ending char is a word
# Also print the number of words in the sentence

# Use a regex containing .!? to split up the sentences to an array
# sort and then return the last array
# split up that array and use Array#Size to count the words
# Print both the sentence and the number of words
require 'pry'
def longest_sentence(text)
    text = IO.readlines(text).to_s
    longest = text.split(/(?<=[.?!])\s*/).sort_by {|sentence| sentence.split.size}.last
    puts "The longest sentence has #{longest.split.size} words"
    puts longest
end

longest_sentence(File.open(ARGV[0]))

def longest_word(text)
  text = IO.readlines(text).to_s
  longest = text.split(/[\p{Punct}\s]/).sort_by { |word| word.size }.last
  puts "The longest word is: #{longest} with #{longest.size} letters."
end

longest_word(File.open(ARGV[0]))

def longest_paragraph(text)
  text = IO.readlines(text).to_s
  longest = text.split("\n\n").sort_by { |paragraph| paragraph.size }.last
  puts "The longest paragraph has #{longest.split.size} words."
  puts longest
end

# longest_paragraph(File.open(ARGV[0]))



