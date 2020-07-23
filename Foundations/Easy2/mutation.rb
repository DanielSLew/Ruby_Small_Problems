array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# => Moe Larry CURLY SHEMP Harpo CHICO Grouche Zeppo
# It prints this because after the loop the array2 and array1 both contain
# the same strings and reference the same object.

# This feature can get you in trouble if you are trying to alter one variable and not the other
# To avoid this it's a good idea to be explicit with your code, rather than
# using the loop on Line3 it would have been more clear to just put array2 = array1

# 2nd TRY

# What will the following code print, and why?

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# => ['Moe', 'Larry', 'CURLY', 'SHEMP', 'Harpo', 'CHICO', 'Groucho', 'Zeppo']

# This is because references to values in array1 are passed to array2
# the arrays have the same value, but also each string value in each array share the same object pointed to
# So when one array's object is mutated, the other array also experiences the change.
