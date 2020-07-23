# Write a method that takes 3 integers as an arg
# These 3 integers represent the sides of a triangle
# Return either :equilateral, :isosceles, :scalene, or :invalid
# triangle is invalid if the sum of the two shortest sides equal to less than the largest side, or a side is less than 1
# equialateral - 3 sides are equal length
# isosceles - 2 sides are equal length, 3rd is diff
# scalene - all 3 sides are diff lengths

# Combine the 3 integers into an array, and call it triangle_sides.
# if the Array#max is greater than the sum of Array#min(2) or the Array includes zero? return :invalid
# if the Array#uniq.size == 2 then two values are equal, return :isosceles
# if the Array#uniq.size == 1 then all values are equal, return :equilateral
# else return :scalene

def triangle(side1, side2, side3)
  triangle_sides = [side1, side2, side3]
  if triangle_sides.max > triangle_sides.min(2).sum || triangle_sides.include?(0)
    :invalid
  elsif triangle_sides.uniq.size == 2
    :isosceles
  elsif triangle_sides.uniq.size == 1
    :equilateral
  else
    :scalene
  end
end
