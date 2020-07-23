# Write a method that takes an int as an arg
# Rotate to the left, keep first digit in place and rotate remaining nums
# keep first 2 digits in place and repeat
# keep first 3 digits in place and repeat
# Keep first 4 digits in place and repeat
# Resulting num is the max rotation
# Use rotate_rightmost_digits from last exercise

def rotate_array(arr)
  arr.empty? ? arr : arr[1..-1] << arr[0]
end

def rotate_rightmost_digits(int, n)
  int_arr = int.to_s.chars
  int_arr[-n..-1] = rotate_array(int_arr[-n..-1])
  int_arr.join
end

# Initialize a count equal to int.to_s.size
# => this will be the number passed to rotate_rightmost_digits
# start a loop
#   use rotate_rightmost_digits and pass the number and count through it
#   each iteration, subtract the count by 1
#     This will hold the first digit, then the next two, etc.
#   Break the loop when count equals to int.to_s.size - 5
# return int

def max_rotation(int)
  count = int.to_s.size
  (count - 1).times do
    int = rotate_rightmost_digits(int, count)
    count -= 1
  end
  int.to_i
end

# Further exploration
# Handling it in 3 parts makes the definitions more valuable by parsing
# more of the logic apart.
# I would have taken a similar approach but added in the logic for the other
#   methods into the loop in max_rotation.
