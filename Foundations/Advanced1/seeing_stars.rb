# Write a method that displays an 8-pointed star in an n by n grid
# where n is an odd integer that is supplied as an argument to the method
# The smallest such start you need to handle is a 7x7 grid

# Examples:

star(9)

*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *

# 1 5 9
# 2 5 8
# 3 5 7
# 4 5 6
# 1-9

# stars ascending will be 1 upto n/2
# stars descending will be n downto n/2 + 2
# (n/2 + 1) always outputs
# (n/2 - 1) == distance between stars
#   each line subtract one from distance btwn stars
#  Use center justify, puts '*' + ' ' * distance + '*' + ' ' * distance + '*'
# after puts '*' * n
# Use reverse method from before

def star(n)
  distance = n/2 - 1
  distance.downto(0) { |i| puts ('*' + ' ' * i + '*' + ' ' * i + '*').center(n) }
  puts '*' * n
  0.upto(distance) { |i| puts ('*' + ' ' * i + '*' + ' ' * i + '*').center(n) }
end

           *    
      *         *
   *               *
 *                   *
*                     *
 *                   *
   *               *
      *         *
           * 

#  12
# 7 17
# 4 20
# 2 22
# 1 23
# 9, 15, 19, 21 - distances
def circle(n)
  distance = n/2
  mid_distance = (distance + 1)/2 * 1.5
  center = ' ' * distance + '*' + ' ' * distance
  puts ' ' * distance + '*' + ' ' * distance
  new_mid_distance = mid_distance * 2/3
  3.times do
    puts ('*' + ' ' * mid_distance + '*').center(23)
    mid_distance =+ new_mid_distance
    new_mid_distance = (new_mid_distance * 0.66).round
    break if mid_distance >= (n - 1)
  end
end
