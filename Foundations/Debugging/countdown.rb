# Change the Following code so it countsdown from 10 to 1
def decrease(counter)
  counter - 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)
end

puts 'LAUNCH!'

# In the method decrease, you are creating new assignment, so the argument
# passed to the method is not changing. To correct this we need to capture
# the return value of the method decrease

10.times do
  puts counter
  counter = decrease(counter) # this will now decrease counter by 1 each iteration
end

# Further exploration, remove the redundancy of putting 10 twice.

counter.times do # We can use counter as an integer in the method times
  puts counter
  counter = decrease(counter)
end
