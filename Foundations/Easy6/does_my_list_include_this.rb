# Define a method named include? that takes an array and a search value as args
# return true if the search value is in the array, false if not, do not use Array#include?
# - Initialize a result variable and set default to false
# - iterate through the array using Array#each
# - if the current value == search value result = true
# - return the result

def include?(arr, search)
  result = false
  arr.each { |num| result = true if num == search }
  result
end

def include?(array, value)
  !!array.find_index(value) # !! changes return to false or true
  # searches for the index of the value, returns nil if cant find
end

def include?(arr, value)
  !!arr.delete(value)
end