# A double num is a num with repeating digits on both sides. (103103, 4444, 33)
# Write method that returns 2 times the number provided as an arg
#   unless the arg is a double num, then return as is.

# Find the middle with Integer#to_s#size / 2
# Use split up the digit using #to_s and #slice and the middle number
# check if the split equals each other, if they do return the num
# if they don't, then return num * 2

def twice(int)
  int = int.to_s
  middle = int.size / 2
  num1 = int[0..(middle-1)]
  num2 = int[middle..-1]
  return int.to_i * 2 if int.size == 1
  return int.to_i if num1 == num2
  int.to_i * 2
end