# Write a method that returns a list of all the divisors of the positive int passed in as arg
# return value can be  in any sequence you wish

Ex.
divisors(1) == [1]
divisors(7) == [1, 7]
divisors(12) == [1, 2, 3, 4, 6, 12]
divisors(98) == [1, 2, 7, 14, 49, 98]
divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute

def divisors(int)
  range = (1..int)
  results = []
  range.each do |num|
    results << num if int % num == 0
  end
  results
end

def divisors(int)
  arr = []
  Math.sqrt(int).to_i.downto(1) do |n|
    if (int % n).zero?
      arr << int / n
      arr.unshift n
    end
  end
  arr.uniq
end