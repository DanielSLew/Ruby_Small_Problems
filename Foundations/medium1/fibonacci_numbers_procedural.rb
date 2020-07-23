# Rewrite the fibonacci method to not use recursion.

# Initialize the first two numbers of the fibonacci sequence
# if n is 2 or less return 1
# Otherwise loop n-2 times
  # New number = number 1 + number 2
  # number 1 = number 2
  # number 2 = new number
# return the new number in the end

def fibonacci(n)
  return 1 if n <= 2
  num1 = 1
  num2 = 1
  new_num = 0
  (n-2).times do
    new_num = num1 + num2
    num1 = num2
    num2 = new_num
  end
  new_num
end

def fibonacci(n)
  first, last = [1, 1]
  3.upto(n) do
    first, last = [last, first + last]
  end
  last
end
