# Write a method that takes two args, starting num and ending num
# Print out all nums between the two
# If a number is divisible by 3, print "Fizz"
# If divisible by 5 print "Buzz"
# If divisible by both 3 and 5, print "FizzBuzz"

# First take the two numbers and create an array with them using #to_ary
# Iterate through the array with Array#each and print, the conditions
# and finally print num if they don't fall under a condition

def fizzbuzz(start, finish)
  (start..finish).to_a.map do |num|
    if num % 15 == 0
      "FizzBuzz"
    elsif num % 3 == 0
      "Fizz"
    elsif num % 5 == 0
      "Buzz"
    else
      num.to_s
    end
  end.join(', ')
end
