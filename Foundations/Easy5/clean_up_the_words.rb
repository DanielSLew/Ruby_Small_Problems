# Define a method that takes a string consisting of multiple words and characters
#   Delete any non-alphaetic characters and replace with spaces
#   Get rid of multiple spaces in a row
# use String#gsub and use the regex for ^a-z and replace any non a-z with a space
# use String#squeeze(" ") to get rid of multiple occurences of spaces in a row
# return the string

def cleanup(string)
  string.gsub(/[^a-zA-Z]/, " ").squeeze(" ")
end

# method without using regex

def cleanup(string)
  new_string = ''

  string.chars.each do |char|
    ('a'..'z').include?(char.downcase) ? new_string << char : new_string << ' '
  end

  new_string.squeeze(" ")
end
