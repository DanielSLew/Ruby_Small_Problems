# Write a method that takes 3 integers as arg
# Each integer represents a degree of a triangle angle
# return :invalid if the sum does not equal 180 or if any side is less than 1
# :acute - all 3 angles are less than 90
# :right - one angle is 90
# :obtuse - one angle is greater than 90

# Combine the 3 numbers into an array and call it triangle_angles
# return :invalid is triangle_angles#sum does not equal 180, or if
#   any side is equal to < 1
# Use a case statement, and refer to triangle_angle#max
#   when 90 then :right
#   when 1..89 then :acute
#   else then :obtuse

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  return :invalid if angles.sum != 180 || angles.any? {|angle| angle < 1}
  case angles.max
  when 90    then :right
  when 1..89 then :acute
  else            :obtuse
  end
end
