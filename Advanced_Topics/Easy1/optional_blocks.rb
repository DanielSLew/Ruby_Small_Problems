# Write a method that takes an optional block
# If block is specified, method should execute it and return value returned by block
# if no block, method should simply return the String "Does not compute"

Ex.

compute { 5 + 3 } == 8
compute { 'a' + 'b' } == 'ab'
compute == 'Does not compute.'

def compute(value=nil)
  block_given? ? yield(value) : "Does not compute."
end

compute(4) { |value| 5 + value } == 9
compute('abc') { |value| 'a' + value } == 'aabc'
compute == "Does not compute."