name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# => BOB
# => BOB
# This is because upcase! is a destructive method and alters the
# object that both of these variables are pointing to.

# 2nd TRY

# Take a look at the following code:

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# What does this print out?

# => Alice
# => Bob

# What does this print out?

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# => BOB
# => BOB

# Because both variables point to the same string object
# And that object is mutated in line 17, so both variables are affected
