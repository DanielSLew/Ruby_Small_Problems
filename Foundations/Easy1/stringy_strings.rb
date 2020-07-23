def valid_arguements(int, start)
  (int.to_s.to_i == int) && (int.to_i > 0)
  start == 1 || start.zero?
end

def stringy(num, start = 1)
  return 'Error!' unless valid_arguements(num, start)
  string = (start == 1 ? '1' : '0')
  loop do
    break if string.length == num
    string << (string.end_with?('1') ? '0' : '1')
  end
  string
end

# num 2

# Returns a string of alternating 1s and 0s, starting with 1
# The length of string should match the given integer

# Examples: 

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# Define a method named stringy with 1 parameter(num)
# Use a ternary operator with num#even? as the condition
# if true '10' * num/2 as an argument
# if false ('10' * num/2) + '1'

def stringy(num)
  string = '10' * (num/2)
  num.even? ?  string : string + '1'
end

# Further exploration

# Set a new parameter to default 1, if 1 start string w/ '1', if 0, start w/ '0'

def stringy(num, start=1)
  string = '10' * (num/2)
  if start == 1
    num.even? ?  string : string + '1'
  else
    num.even? ? string.reverse : string.reverse + '0'
  end
end

