# Write a method that returns a list of all substrings of a string
# start at the beginning of original string
# return value should be shortest to longest substring

# Use String#Chars to form an array
# Iniitalize a result array
# Iterate through the array.size.times
# concatenate all the chars and send to the result array
# use pop to get rid of the last element and repeat
# use Array#sort at the end

def substrings_at_start(string)
  result = []
  string = string.chars
  string.size.times do
    result << string.join('')
    string.pop
  end

  result.sort
end
