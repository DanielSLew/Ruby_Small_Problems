# 1 Enter an integer
#   - check if integer is over 0
# 2. Take the range of 1 to the number provided and add to an array
# 3. Ask if they want to compute the sum ('s') or product ('p') of the numbers
# 4. return the results in a statement

def range_limit
  limit = ''
  puts '>> Please enter an integer greater than 0.'
  loop do
    limit = gets.chomp.to_i
    limit > 0 ? break : (puts '>> Please provide a number over than 0')
  end
  limit
end

def operation
  operator = ''
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  loop do
    operator = gets.chomp.downcase
    break if %w(s p).include? operator
    puts ">> Please enter either 's' for the sum, or 'p' for the product!"
  end
  operator
end

def sum_or_product(operator, range)
  result = 0
  if operator == 's' 
    result = (1..range).reduce(:+) 
  else 
    result = (1..range).reduce(:*)
  end
  result
end

range = range_limit
operator = operation
result = sum_or_product(operator, range)
operator = (operator == 'p' ? 'product' : 'sum')

puts "The #{operator} of the integers between 1 and #{range} is #{result}!"

# 2nd TRY

# Write a program that asks the user to enter an integer greater than 0
# ask if the user wants to determine the sum or producter of all nums between 1 and the intereger

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# Initialize both num and sum_or_product to 0 and '' respectively
# Use #puts and #gets#chomp to get user input for an integer
# Use #puts and #gets#chomp to get user input for sum 's' or product 'p'
# Wrap the user input in loop methods, that break when input is valid
  # valid input for the integer must be > 0
  # input for sum_or_product#downcase must include ['s', 'p']
# if 's', use (1..integer)#to_ary#reduce(:+) to calculate the sum
# if 'p' use (1..integer)#to_ary#reduce(:*) to calculate the product
# use the method puts to output the result statement

num = 0
sum_or_product = ''

loop do 
  puts 'Enter an integer greater than 0'
  num = gets.chomp.to_i
  break if num > 0
  puts "That number isn't above 0!"
end

num_range = (1..num).to_a

loop do
  puts "Enter 's' to compute the sum, 'p' to compute the product"
  sum_or_product = gets.chomp.downcase
  break if %w(s p).include?(sum_or_product)
  puts "Please enter a valid answer!"
end

result = sum_or_product == 'p' ? num_range.reduce(:*) : num_range.reduce(:+)

sum_or_product = sum_or_product == 'p' ? 'product' : 'sum'

puts "The #{sum_or_product} of the integers between 1 and #{num} is #{result}."

