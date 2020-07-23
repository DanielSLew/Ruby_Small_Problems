# Define a method that takes a string arg and returns new string
#   with the value of original string with all consecutive duplicate chars deleted
#   do not use String#squeeze(!)
# Initialize new variable non_consecutive = ''
# use String#chars to split up the chars and Array#each to iterate through them
#   use << to append current char to the non_consecutive variable if
#     the String[-1] is different than the current char.

def crunch(string)
  non_consecutive = ''

  string.chars.each do |char|
    non_consecutive << char if char != non_consecutive[-1]
  end

  non_consecutive
end

def crunch(string)
  string.gsub(/(.)\1+/, '\1') 
  # (.) captures any character and saved it in a capture group
  # \1 calls on the first capture group, the item saved in (.)
  # + looks for one or more instances of that group
  # '\1' it is then replaced by the first capture group, whatever was in (.)
end
