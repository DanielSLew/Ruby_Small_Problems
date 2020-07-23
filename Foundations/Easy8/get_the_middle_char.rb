# Write a method that takes a non-empty string arg
# Returns the middle char or chars of the arg
# If arg has an odd length, return 1 char
# If arg has an even length, return 2 chars

# Initialize a middle variable equal to string.size/2
# If the string.size is even, return the character using middle
# If the string.size is odd, return the (middle - 1) character and the following char

def center_of(string)
  middle = string.size/2
  string.size.even? ? string[middle-1, 2] : string[middle]
end
