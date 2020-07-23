puts "What is your name?"
name = gets.chomp

response = "Hello #{name}."
response_scream = "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?"

name.end_with?('!') ? (puts response_scream) : (puts response)


# SECOND TIME


# Write a program that will ask for a user's name
# It will then greet the user
# If the user writes "name!" then the computer responds in all caps

# Examples:

# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# use #p to ask for a name
# Initialize variable name and assign it to gets.chomp
# Check if name has a '!' at the end using #end.with?('!')
# if it does yell back, if not, respond normally

p 'What is your name?'
name = gets.chomp

puts name.end_with?('!') ? "HELLO #{name.chop.upcase} WHY ARE WE SCREAMING?" : "Hello #{name}."
