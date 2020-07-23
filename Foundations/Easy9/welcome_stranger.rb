# Write method that takes 2 args, an array & hash
# Array will contain 2 or more elements that when combined with spaces
#   will produce a persons name
# Hash will contain two keys, title and occupation, and appropriate values
# Return a greeting that uses the persons full name and mentions their title.

# Combine the Array with Array#join(' ') to form the name and save to variable
# Combine the hash values with Hash#Values#join(' ')
# use a puts statement and put it all together

def greetings(arr, hash)
  name = arr.join(' ')
  job = hash.values.join(' ')
  puts "Hello, #{name}! Nice to have a #{job} around."
end