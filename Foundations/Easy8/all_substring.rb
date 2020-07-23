# Write a method that returns a list of all substrings of a string
# Order substrings by where in the string the substring begins
# In each position they are returned smallest to largest
# you may use previous substrings_at_start method

# Initialize a result array
# Use substrings_at_start to return an array of the first letter
# Use string = string[1..string.size] to return the string without the first letter
# repeat until finished


def substrings_at_start(string)
  result = []
  string = string.chars
  string.size.times do
    result << string.join('')
    string.pop
  end

  result.sort
end

def substrings(string)
  result = []
  string.size.times do
    result << substrings_at_start(string)
    string.slice!(0)
  end
  result.flatten
end
