# Define a method that takes a string of words separated by spaces
#   then returns the string with the first and last letter of each word swapped
# use String#split and Array#map! to iterate through words and save the return to a new variable
# save the first letter as a variable
# use gsub combined with String[] to sub those letters
# use Array#join(' ') to make the variable into a sentence again.

def swap(string)
  string_arr = string.split.map do |word|
               first_letter = word[0]
               word = word.gsub(word[0], word[-1])
               word[-1] = first_letter
               word
             end
  string_arr.join(' ')
end

#Further exploration
def swap_first_last_characters(a, b)
  a, b = b, a
end
# using this method called like this:
swap_first_last_characters(word[0], word[-1])
# would not work because the return of swap_first_last_characters
# is an error of the first and last character, you need to return
# the swapped word itself to get the results you want.