# Write a method that computes the nth fibonacci number
# nth is the argument it takes


def fibonacci(n)
  if n <= 2
    1
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end