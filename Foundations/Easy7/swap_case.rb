# write a method that takes a string as arg
# Returns new string
# Every uppercase letter replaced with lowercase and vice versa
# All other chars are unchanged
# Do not use String#swapcase

# Use String#chars and then Array#map to iterate through characters
# Use reg exp to see if it contains a-z, if it does, upcase
# Use same idea for A-Z
# use Array#join('') after

def swapcase(string)
  string.chars.map do |char|
    if char[/[a-z]/]
      char.upcase
    else char[/[A-Z]/]
      char.downcase
    end
  end.join('')
end
