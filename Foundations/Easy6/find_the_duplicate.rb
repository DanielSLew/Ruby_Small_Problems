# Define a method that takes an unordered array where a duplicate value
# occurs once, and return what value that is.
# - Initialize an empty array to save unique numbers
# - Iterate through the array adding numbers to the new array
#   - if the number exists already in the new array, return that number

def find_dup(arr)
  unique = []
  result = 0
  arr.each do |value|
    unique.include?(value) ? result += value : unique << value
  end
  result
end

def find_dup(arr)
  arr.find { |element| arr.count(element) == 2 }
end
