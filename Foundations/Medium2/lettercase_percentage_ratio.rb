# Write a method that takes a string as an arg
# String can contain uppercase, lowercase, or neither
# Return a hash that contains the percentage totals of each of those in the string

# Initialize a hash containing lowercase, uppcase, and neither as keys
# Use String#count to count /[a-z]/, /[A-Z]/, & /[^a-zA-Z]/
# save those numbers in lowercase, uppcase, and neither respectively
# divide those numbers by 10.0 to get a float percentage.
# Multiply those numbers by 100 to get a percentage number
# If the number % 1 == 0 then convert to_i (Gets rid of useless decimal points)

def convert_to_percentages(num, size)
  num = (num / size.to_f) * 100
  num % 1 == 0 ? num.to_i : num.round(2)
end

def letter_percentages(string)
  percentages = { lowercase: 0, uppercase: 0, neither: 0 }
  size = string.size
  percentages[:lowercase] = convert_to_percentages(string.count("a-z"), size)
  percentages[:uppercase] = convert_to_percentages(string.count("A-Z"), size)
  percentages[:neither] = convert_to_percentages(string.count("\^a-zA-Z"), size)
  percentages
end
