# Write a method that takes an int arg
# returns an Array  of all ints, in sequence between 1 and the arg
# Assume the arg will always be a valid int greater than 0

# use for i in 1..int prepend to an empty array

def sequence(num)
  result = []
  for i in 1..num
    result << i
  end
  result
end

def sequence(num)
  (1..num).to_a
end

# Further exploration, using negative or positive nums

def sequence(num)
  result = []
  start = 1
  loop do
    result << start
    break if start == num
    start = (num > 0 ? start.next : start.pred)
  end
  result
end

