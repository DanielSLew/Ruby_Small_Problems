# - Define a method that takes 2 string as arguments
# - compare those two strings to see which is longer
#   - use String#casecmp? for case-insensitive version
# - concatenate the strings together to get short, long, short.

def short_long_short(s1, s2)
  s1.casecmp?(s2) ? (s1 + s2 + s1) : (s2 + s1 + s2)
end


# 2nd TRY

# Write a method that takes two strings as arguments
# Find which one is longer
# Returns a new string that contains the short, then long, then short strings concatenated

# Examples:

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

# Define a method named short_long_short with 2 parameters(string1, string2)
# call #length on both strings to determine which is longer
# initialize variables short and long and assign them to the appropriate string
# return short + long + short on the last line
# use comparison between variable long and string1 to determine short
#   This protects against if the string lengths are the same size.

def short_long_short(string1, string2)
  long = (string1.length > string2.length ? string1 : string2)
  short = (long == string1 ? string2 : string1)
  short + long + short
end
