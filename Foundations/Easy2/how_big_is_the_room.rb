# SQFEET_TO_SQINCHES = 12
# SQFEET_TO_SQCM = 30.48

# puts "Enter the length of the room in feet:"
# length = gets.chomp.to_f

# puts "Enter the width of the room in feet:"
# width = gets.chomp.to_f

# area_feet = length * width
# area_inches = (area_feet * SQFEET_TO_SQINCHES).round(2)
# area_cm = (area_feet * SQFEET_TO_SQCM).round(2)

# puts "The area of the room is #{area_feet} square feet " + \
#      "(#{area_inches} square inches or #{area_cm} square centimeters)."


# NUM 2

# Initialize a constant SQM_TO_SQFT and set it equal to 10.7639
# Use puts with strings passed to it followed by gets.chomp to get user input
#   Save user_inputs to length, width variables and call #to_f on both
# Use puts to output the results
# To figure out square meters with decimal places multiply length by width
# To figure out square ft multiply the square meters by the constant SQM_TO_SQFT

SQM_TO_SQFT = 10.7639

puts 'Enter the length of the room in meters:'
length = gets.chomp.to_f

puts 'Enter the width of the room in meters:'
width = gets.chomp.to_f

sq_meters = length * width
sq_feet = sq_meters * SQM_TO_SQFT

puts "The area of the room is #{sq_meters} square meters (#{sq_feet} square feet)"

# Further Exploration

SQFT_TO_SQIN = 144
SQFT_TO_SQCM = 929.03

puts 'Enter the length of the room in feet:'
length = gets.chomp.to_f

puts 'Enter the width of the room in feet:'
width = gets.chomp.to_f

sq_feet = length * width
sq_inches = sq_feet * SQFT_TO_SQIN
sq_cm = sq_feet * SQFT_TO_SQCM

puts "The area of the room is #{sq_feet} square feet (#{sq_inches} square inches " +
     "and #{sq_cm} square centimeters)"


