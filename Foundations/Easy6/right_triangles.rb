# define am ethod that takes a positive int, n, as an arg
# display a right triangle whose sides each have n stars
# the hypotenuse stretching from the top right to the bottom left
# - Initialize a line variable starting with 0
# - start a loop that breaks when n == line
# - use Kernel#puts to print ((n - line) * (' ')) + (line * '*')
# - increase line by 1

def triangle(n)
  line = 0
  loop do
    puts ' ' * (n - line) + ('*' * line)
    break if line == n
    line += 1
  end
end

def upside_down_triangle(n)
  line = n
  loop do
    puts ' ' * (n - line) + ('*' * line)
    break if line.zero?
    line -= 1
  end
end

# Further Exploration

def orientation_msg
  <<-MSG
=>  Which corner do you want the right angle of the triangle to face?
=>  Top Right => type "tr"
=>  Top Left => type "tl"
=>  Bottom Right => type "br"
=>  Bottom Left => type "bl"
    MSG
end

def orientation_input
  values = %w(tr tl br bl)
  result = ''

  loop do
    puts orientation_msg
    result = gets.chomp.downcase
    break if values.include?(result)
    puts 'Error! Please type a valid answer'
  end

  values.index(result)
end

def triangle(n)
  orientation = orientation_input

  if [0, 1].include?(orientation)
    line, count = n, -1
  else
    line, count = 1, 1
  end

  n.times do
    if [0, 2].include?(orientation)
      puts ' ' * (n - line) + '*' * line
    else
      puts '*' * line + ' ' * (n - line)
    end
    line += count
    
  end
end
