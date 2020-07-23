# The following code prompts the user to set a password if they don't already have one
# Then it asks them to login, however the program throws an error
# fix it, and then after if it's fixed, make sur eyou can log in with the password

password = nil

# def set_password
#   puts 'What would you like your password to be?'
#   new_password = gets.chomp
#   password = new_password
# end

# def verify_password
#   puts '** Login **'
#   print 'Password: '
#   input = gets.chomp

#   if input == password
#     puts 'Welcome to the inside!'
#   else
#     puts 'Authentication failed.'
#   end
# end

# if !password
#   set_password
# end

# verify_password

# We see a NameError thrown on line 18, the variable password inside
# the verify_password definition is not initialized. We need to save set_password
# to a password variable and then change the verify_password method to 1 parameter, and then
# send the local variable password as an argument to the verify_password method.

password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)