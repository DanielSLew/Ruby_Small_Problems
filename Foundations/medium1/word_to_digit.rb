# Write a method that takes a string sentence as input
# Returns the same string with any word number converted to digit
# i.e. 'zero' => '0'

# Create a constant hash of word number(key) to digit strings(value)
# Split the string into an array of words, iterate through each word
# If the word includes any of the keys from the constant, sub that word
require 'pry'
NUMBER_STRINGS = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
                   'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
                   'eight' => '8', 'nine' => '9' }

def word_to_digit(sentence)
  sentence.split.map do |word|
    NUMBER_STRINGS.keys.each do |key|
      word.gsub!(/\b#{key}\b/, NUMBER_STRINGS[key]) if word.include?(key)
    end
    word
  end.join(' ')
end

#Further Exploration

def word_to_digit(words)
  NUMBER_STRINGS.keys.each do |word|
    words.gsub!(/\b#{word}\b/i, NUMBER_STRINGS[word]) # \b limits to complete words
  end
  format_digits(words)
end

def format_digits(words)
  sentence = ''
  words.split.each do |word|
    if (word =~ /[0-9]/ && sentence[-1] =~ /[0-9]/) || sentence.empty? 
      sentence << word
    else
      sentence << " #{word}"
    end
  end
  sentence.gsub!(/(\p{n}{3})(\p{n}{3})(\p{n}{4})/, '(\1) \2-\3')
end

word_to_digit('zero nine five four seven two 1 981 freight walk zero.')

