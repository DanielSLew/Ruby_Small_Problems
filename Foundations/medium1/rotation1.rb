# Write a method that rotates an array by moving the first value to the end
# Do not modify original array
# Do not use Array#rotate(!)

# Initialize new_arr to all values except the first
# Use Array#[] to reference the first element, and then append to array

def rotate_array(arr)
  arr.empty? ? arr : arr[1..-1] << arr[0]
end

# Further exploration
# Rotate a string, and rotate an integer
# Use String#Chars then use the rotate_array method, and then join it together
# For Integers, use Integer#to_s, then use the String method, then convert to_i

def rotate_string(string)
  rotate_array(string.chars).join
end

def rotate_integer(int)
  int < 0 ? -rotate_string(int.abs.to_s).to_i : rotate_string(int.to_s).to_i
end