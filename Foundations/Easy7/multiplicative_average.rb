# Write a method that takes an array of integers
# Multiplies all integers together
# Divides result by number of entries in array
# Prints the result rounded to 3 decimal places

# Use Ennumerable#inject(:*) / Array#size and save to result
# Use format to 3 floating point decimal 0's
# Print the result

def show_multiplicative_average(arr)
  result = arr.inject(:*) / arr.size.to_f
  puts "The result is #{sprintf "%.3f", result}" 
end
