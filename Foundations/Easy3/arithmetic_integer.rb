puts "=> Enter the first number:"
first = gets.chomp.to_f

second = ''
loop do
  puts "=> Enter the second number:"
  second = gets.chomp.to_f
  break unless second == 0
  puts "Please enter a number that isn't 0!"
end

puts "==> #{first} + #{second} = #{first + second}"
puts "==> #{first} - #{second} = #{first - second}"
puts "==> #{first} * #{second} = #{first * second}"
puts "==> #{first} / #{second} = #{first / second}"
puts "==> #{first} % #{second} = #{first % second}"
puts "==> #{first} ** #{second} = #{first ** second}"

# Write a program that prompts the user for two positive integers
# prints the results of the following operations on those two numbers
#   addition, subtraction, product, quotient, remainder, and power
# do not validate input

# Example
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

# Call #puts and #gets#chomp#to_i to get user input for 2 numbers
# Initialize 2 separate variables and assign them to the user input
# Call the +, -, *, /, %, and ** methods on the two numbers
#   Call puts to show each result "#{num} operation #{num2} = #{num operation num2}"
# as per the example, we do not need to convert anything to a float.

puts "Enter the first number:"
first = gets.chomp.to_i

puts "Enter the second number"
second = gets.chomp.to_i

puts "#{first} + #{second} = #{first + second}"
puts "#{first} - #{second} = #{first - second}"
puts "#{first} * #{second} = #{first * second}"
puts "#{first} / #{second} = #{first / second}"
puts "#{first} % #{second} = #{first % second}"
puts "#{first} ** #{second} = #{first ** second}"
