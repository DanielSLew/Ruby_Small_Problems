def xor?(condition1, condition2)
  return true if condition1 && !condition2
  return true if condition2 && !condition1
  # (condition1 && !condition2) || (condition2 && !condition1)
  # also works and is more suscinct.
  false
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false

# xor operators are not short circuit operators because the outcome is always
# dependant on the second outcome because the second outcome has to be the opposite
# of the first.

# 2nd TRY

# exclusive or is when you need only one condition of two to be true (not both)
# cannot use || operator because it also returns true if both are true

# Examples:

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

# Define a method named xor? with 2 parameters (condition1, condition2)
# Create an if statement, if condition1 then then return true if !condition2
# else if condition2 then return true is !condition1
# Outside of the if statement have a false boolean incase neither of the condition returned true

def xor?(condition1, condition2)
  if condition1 
    return true if !condition2
  elsif condition2
    return true if !condition1
  end
  false
end

# Further exploration

# Short circuit evaluations in xor operations don't make sense because
# the second situation always needs to be evaluated. The context of both
# situations matter. 
