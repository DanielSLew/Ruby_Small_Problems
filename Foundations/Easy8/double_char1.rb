# Write a method that takes a string
# Returns a new string which has every char doubled

# Create a new_string variable
# Seperate string into array
# Iterate through string with #each
# For each iteration do 2.times append to new string
# return new_string

def repeater(string)
  new_string = ''
  string.chars.each do |char|
    2.times { new_string << char }
  end
  new_string
end
