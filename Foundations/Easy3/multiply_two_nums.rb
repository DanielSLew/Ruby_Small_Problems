def multiply(num1, num2)
  num1 * num2
end

puts multiply(5, 3) == 15
puts multiply([1, 2, 3], 2) # => [1, 2, 3, 1, 2, 3]

# 2nd TRY

# Write a method that takes 2 arguments, multiplies them together
# returns result

# Example:
multiply(5, 3) == 15

# Define a method named multiply with 2 parameters (num1, num2)
# Call #* on num1 and pass num2 as an argument

def multiply(num1, num2)
  num1 * num2
end

# If the first num is an array, it multiples the entire array by 2, and concatentates them
# Giving us [array, array]