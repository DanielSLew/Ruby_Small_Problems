# Write a method that displays a 4-pointed diamond in an n x n grid
# Where n is an odd integer that is supplied as an arg
# Assume int is always odd

# create a count(stars) that starts at 1
# separate the diamond into first and second half
# First half includes the midpoint
# Use for loop to loop through the stars/spaces
#   create a second count(spaces) that is int-number_of_iteration/2
#   Increase stars by 2 (or decrease by 2 in second half)
# use Kernel#puts to print spaces + stars + spaces
# subtract -4 from stars before starting the second half.
require 'pry-byebug'
def display_stars(number_of_lines, sign)
  stars = sign.positive? ? 1 : (number_of_lines * 2) - 1
  for n in 1..number_of_lines do 
    spaces = ((number_of_lines * 2) - sign - stars.abs) / 2
    puts " " * spaces + "*" * stars + " " * spaces
    stars += (2 * sign)
  end
end

def diamonds(num)
  first_half = (num/2.0).round
  second_half = num - first_half
  display_stars(first_half, 1)
  display_stars(second_half, -1)
end

# Further exploration

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = if number_of_stars > 1 
            '*' + ' ' * (number_of_stars - 2) + '*'
          else
            '*'
          end
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  binding.pry
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

diamond(5)

