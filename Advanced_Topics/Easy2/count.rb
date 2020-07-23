# Write a method count that behaves similarly to Enumerable#count
# should take 0 or more args and a block
# return total num of args for which the block returns true

Ex.

count(1, 3, 6) { |value| value.odd? } == 2
count(1, 3, 6) { |value| value.even? } == 1
count(1, 3, 6) { |value| value > 6 } == 0
count(1, 3, 6) { |value| true } == 3
count() { |value| true } == 0
count(1, 3, 6) { |value| value - 6 } == 3

# define method count that uses a splat operator arg with a default of nil
# call each on the arg, then yield each element to the block
# create a count for occurences of true

def count(*vals)
  vals.reduce(0) { |total, val| yield(val) ? total + 1 : total }
end
