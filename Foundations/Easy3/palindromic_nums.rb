def palindromic_number?(int)
  int.to_s == int.to_s.reverse
end

# if the number start with a 0 the method will not work because
# leading 0's return the bit of a number.

# 2nd TRY

# Write a method that returns true if its integer arg is palindromic

# Examples:

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

# Define a method named palindromic_number? with 1 parameter(num)
# call #to_s on num, and compare it to #to_s#reverse

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end
