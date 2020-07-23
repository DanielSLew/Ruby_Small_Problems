def repeat(string, integer)
  if integer > 0
    integer.times { puts string }
  else
    puts "Make sure to put a positive number!"
  end
end

repeat("Hello", -1)
repeat("Hello", 0)
repeat("This is repeating", 5)
