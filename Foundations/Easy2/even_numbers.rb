for num in (1..100)
  puts num if num.even?
end


1.upto(99) do |num|
  next if num.odd?
  puts num
end

# 2nd TRY

# Print the even numbers from 1 to 99
# All numbers should be printed on different lines

# Call the method Array#each on the range (1..99)#to_a
# for each num puts num if num#even?

(1..99).to_a.each { |num| puts num if num.even? }