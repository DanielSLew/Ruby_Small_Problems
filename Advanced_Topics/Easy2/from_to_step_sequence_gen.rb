# Write a method that mimics Range#step but does not operate on a range
# 3 args: starting value, ending value, and step value
# method should also take a block which it will yield or call successive iteraitons

Ex.

step(1, 10, 3) { |value| puts "value = #{value}" }
value = 1
value = 4
value = 7
value = 10

# Create a range with the first two args
# create a counter that starts at starting value
# iterate through with each
# 
# yield each iteration to the block

def step(start_val, end_val, step_val)
  (start_val..end_val).each do |val|
    yield(val) if (val - start_val) % step_val == 0 || (val == start_val)
  end
end

