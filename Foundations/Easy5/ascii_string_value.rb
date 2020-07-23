# Define a method that takes a string and returns the ASCII value of it.
# - initialize a variable 'value' to store the ASCII value
# - split the string using #chars and iterate through the array using #each
#   - call String#ord on each iteration and add the value to 'value'
# - return the value

def ascii_value(string)
  value = 0

  string.chars.each do |char|
    value += char.ord
  end

  value
end

char.ord.chr == char 
# even if you use a longer string, String#ord only takes the value of the first character.

# Second try

# Split up the string into chars, map the chars using #ord and sum the results

def ascii_value(string)
  string.chars.map(&:ord).sum
end