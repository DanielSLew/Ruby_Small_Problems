# The follow code:

def my_method(array)
  if array.empty?
    []
  elsif
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# Should output
# []
# [21]
# [9, 16]
# [25, 36, 49]

# Find and fix the bug


def my_method(array)
  if array.empty?
    []
  elsif array.size == 1
    [7 * array.first]
  else
    array.map do |value|
      value * value
    end
  end
end

# when the original code is run it returns nil each time because 
# on line 6 the elsif statement has no condition following it, so it uses the
# next expression as a condition, calling #map will be truthy so it evaluates the
# condition, but there is nothing following it to use as the return, so the return will be
# the default return of an if statement which is nil. Each array that reaches the second condition
# will always return nil, which is why the array.empty? condition worked fine.
# to fix this we must swap the elsif and the else statements (else doesn't need a condition) and add a conditino
# for the elsif (array.size == 1)





