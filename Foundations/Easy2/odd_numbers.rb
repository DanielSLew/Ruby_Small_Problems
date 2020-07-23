for num in (1..100)
  puts num if num.odd?
end


1.upto(99) do |num|
  next if num.even?
  puts num
end

# 2nd TRY

# Write a program that prints all odd numbers from 1 to 99, inclusive
# All numbers should be printed on separate lines

# Call the method #upto on 1, and pass the argument 99 to it.
# puts num if num#odd?

1.upto(99) do |num|
  puts num if num.odd? 
end
