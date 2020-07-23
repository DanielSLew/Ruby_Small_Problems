# Write a method that takes a number as an arg
# If the arg is positive number, return negative of that num
# if 0 or negative, return original num

# If num is > 0 multiply by -1
# If num is 0 or below, return the num

def negative(num)
  num > 0 ? -num : num
end

def negative(num)
  -num.abs
end

# This is more suscinct but not as superior because if you needed to
# rework the def, the former is a lot easier to do so.