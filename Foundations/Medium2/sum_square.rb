# Write a method that takes a positive integer
# Calculate the square of the sums of numbers from 0..integer
# calculate the sum of the squares of each number from 0..integer
# compare the two numbers and return the difference

# Initialize two variables
# sum_square = (1..integer) to array summed, and then squared (**2)
# square_sum = (1..integer) to array then use Ennumerable#reduce to sum the square
# (sum_square - square_sum).abs to get the difference

def sum_square_difference(num)
  sum_square = ((1..num).sum) **2
  square_sum = (1..num).reduce { |sum, n| sum += n **2 }
  (sum_square - square_sum).abs
end
