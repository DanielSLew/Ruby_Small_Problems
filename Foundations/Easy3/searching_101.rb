# Ask for 5 numbers consequtively (positive or negative)
# Add those 5 numbers to an array
# Ask for a final number
# Check to see if the array includes the final number

num_list = []
puts "=> Enter the 1st number:"
num_list << gets.chomp.to_i
puts "=> Enter the 2nd number:"
num_list << gets.chomp.to_i
puts "=> Enter the 3rd number:"
num_list << gets.chomp.to_i
puts "=> Enter the 4th number:"
num_list << gets.chomp.to_i
puts "=> Enter the 5th number:"
num_list << gets.chomp.to_i

puts "=> Enter the last number:"
last = gets.chomp.to_i

if num_list.include?(last)
  puts "The number #{last} appears in #{num_list}."
else
  puts "The number #{last} does not appear in #{num_list}."
end

# 2nd TRY

# Write a program that solicits 6 numbers from the user
# prints a message that describes whether or not the 6th number appears amongst the first 5 numbers

# Examples:
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].

# Call puts and call gets#chomp#to_i to get user input for 5 numbers
# Initialize variable num_array, and use #<< to put each input into the array
# use the same methods to get user input for the last number variable
# Call #include? on num_array
#   pass in the last number as an argument
# if the previous method call is true output that the number appears in num_array
# if false output the number does not appear in num_array

puts "Enter the 1st number:"
num_array = [gets.chomp.to_i]
puts "Enter the 2nd number:"
num_array << gets.chomp.to_i
puts "Enter the 3rd number:"
num_array << gets.chomp.to_i
puts "Enter the 4th number:"
num_array << gets.chomp.to_i
puts "Enter the 5th number:"
num_array << gets.chomp.to_i

puts "Enter the last number:"
last = gets.chomp.to_i

puts num_array.include?(last) ? "The number #{last} appears in #{num_array}" :
                                "The number #{last} does not appear in #{num_array}"
