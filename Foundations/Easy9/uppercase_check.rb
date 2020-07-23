# Write a method that takes a string arg
# Returns true if all of the alphabetic chars inside the string are uppercase
# False if not all caps.
# Ignore all non alphabetic chars

# Compare the string#upcase with string

def uppercase?(string)
  string.upcase == string
end

# Further exploration
# It would make sense to have a false output when the string is empty
# Because there technically is no uppercased letters, so it may mess
# with future output depending on what you're using this for.
