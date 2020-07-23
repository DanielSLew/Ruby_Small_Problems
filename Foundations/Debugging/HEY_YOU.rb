# Modify the following code so it appears in all caps

def shout_out_to(name)
  name.chars.each { |c| c.upcase! }

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# calling chars on name creates a new object, an array object
# when you call each on the array object and then mutate the array
# the object that the local variable name is pointing to is unchanged
# We can fix this a few ways:
#   - by assigning name to the to line 4 and also using Array#join at the end
#   - Just calling String#upcase! directly on the local variable name
# The latter is much more succinct

def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you')
