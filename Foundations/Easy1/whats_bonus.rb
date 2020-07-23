# Method takes 2 args (positiv int, boolean)
# Check first arg for positive int
# check second arg for boolean
# if true return half of the positive int, if false return 0

def valid_salary(salary)
  salary > 0 && salary.to_s.to_i == salary
end

def calculate_bonus(salary, bonus)
  return 'Error' unless valid_salary(salary)
  bonus ? salary / 2 : 0
end

# NUM 2

# Write a method that takes two arguments (positive integer & boolean)
# Calculate the bonus for a given salary
# If boolean is true, bonus should be half of salary
# If boolean is false, bonus should be 0

# Examples:

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# Define a method named calculate bonus with 2 parameters (salary, bonus)
# Use a ternary operator with the condition being bonus
# If true return salary divided by 2
# If false return 0

def calculate_bonus(salary, bonus)
  bonus ? salary / 2 : 0
end
