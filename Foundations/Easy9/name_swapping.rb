# Write a method that takes a first name, a space, and a last name as a string
# return the string that contains last name, comma, space, first name

# Split the string and then combine them together in reverse

def swap_name(name)
  name.split.reverse.join(', ')
end