# Randomly generate Teddy's age
# - Generate a random number between 20-200
# - print that number in a string

def age(name = "Teddy")
  "#{name} is #{rand(20..200)} years old!"
end

puts "What is the name of the person you want to know the age of?"
name = gets.chomp

puts age(name)

# Build a program that randomly generates and prints Teddy's age
# To get the average, generate a random number between 20 and 200

# Example Output
# => Teddy is 69 years old!

# Initialize variable age and assign it to rand(20..200)
# Call puts and pass a string asking for a name to it.
# initialize the variable name and use the method gets and call #chomp on it to get user input
# Check to see if the variable name is empty using #empty?
#   Set it to "Teddy" if its empty
# Call puts and pass the string with the name and age in it to it.

age = rand(20..200)
puts "Whose age do you wish to see?"
name = gets.chomp
name = "Teddy" if name.empty?
puts "#{name} is #{age} years old!"
