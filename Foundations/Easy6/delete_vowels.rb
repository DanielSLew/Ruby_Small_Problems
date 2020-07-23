# Define a method that takes an array of strings
#   returns array of same string values except with vowels removed
# use Array#each to iterate through the array
#   in the iteration use String#delete! to mutate the object and remove vowels

def remove_vowels(string_arr)
  string_arr.map do |word|
    word.delete "/[aeiou][AEIOU]/"
  end
end

def remove_vowels(string_arr)
  string_arr.each { |word| word.gsub!(/[aeiou]/i, '') }
end
