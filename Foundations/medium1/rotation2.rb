# Write a method that can rotate the last n digits of a number
# You may use the rotate_array method from last exercise
# Assume n is always positive

def rotate_array(arr)
  arr.empty? ? arr : arr[1..-1] << arr[0]
end

# Turn the digits into an array of strings, using #to_s & String#chars
# Use Array#take(arr.size - n) to grab all elements unaffected by n
# Take the last 'n' numbers using Array#[] (-1..-n)
# Use rotate_array on the 'n' digits and append to the part unaffected by n
# Use Array#join, and #to_i to return the number

def rotate_rightmost_digits(int, n)
  int_arr = int.to_s.chars
  (int_arr.take(int_arr.size - n) << rotate_array(int_arr[-n, n])).join.to_i
end

def rotate_rightmost_digits(int, n)
  int_arr = int.to_s.chars
  int_arr[-n..-1] = rotate_array(int_arr[-n..-1]) # replaces just the last n digits
  int_arr.join.to_i
end