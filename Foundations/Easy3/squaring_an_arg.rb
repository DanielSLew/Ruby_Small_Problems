def multiply(num1, num2)
  num1 * num2
end

def power(n, power)
    multiply(n, (n ** (power -1)))
end

# 2nd TRY

# Using the multiply method from the previous assignment
# Write a method that computes the square of its argument

# Example:

square(5) == 25
square(-8) == 64

def multiply(num1, num2)
  num1 * num2
end

# define a method named square that takes 1 parameter (num)
# Inside the method call multiply and pass the argument num as both arguments for multiply

def square(num)
  multiply(num, num)
end

# Further exploration, change method square to include the option to power the number to the nth

# Add 1 more parameter to method square and call it size
# For the second argument in multiply, change it to num ** size - 1
# When you pass in power to 0, you expect it to return 1, but because of how the definition
# is set up it returns (1/5), to fix this call an explicit return when size == 0

def power(num, size)
  return 1 if size == 0
  multiply(num, num ** (size - 1))
end
