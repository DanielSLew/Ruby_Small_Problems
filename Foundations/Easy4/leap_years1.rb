# - Define a method that takes a year(integer) as input
# - Check if that year is a leap year
#   - leap year if
#     - divisible by 4
#     - With an exception of being divisible 100
#       - Another except exists that if it is divisible by 400 it IS a leap year

def leap_year?(year)
  return true if year % 400 == 0
  return false if year % 100 == 0
  year % 4 == 0
end

# It's important that you put the '% 400' check before the '% 100' check
# because the latter will return false before ruby evaluates the former.

def leap_year_alt?(year)
  (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0)
end

# It's easier to read to evaluate the '% 4' first to check if it's a leap year
# and then isolate the exceptions in another expression.

# 2nd TRY -----------------------------------------------------------

# Under Gregorgian Calendar, leap years ocur in every year divislbe by 4
# unless the year is also divisible by 100 (not leap year)
# if the year is divisible by 400 it IS a leap year
# Assume the rule stands for any year greater than year 0
# Write a method that returns true if the year is a leap year, and false if not
# Assume year is greater than 0

# Examples:

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

# Write a method named leap_year? with 1 parameter(year)
# Work backwards through the rules in order of precedence
# if year % 400 == 0 return true
# if year % 100 == 0 return false
# if year % 4 == 0 return true
# This can be written out as year % 400 or NOT % 100 AND % 4 

def leap_year?(year)
  (year % 400 == 0) || (year % 100 != 0 && year % 4 == 0)
end

# Further exploration, rewrite the order of opperations
# first do year % 4, then year % 100, then year % 400

def leap_year?(year)
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end

# This version of the method makes it easier to read in my opinion
# Because it's more true to what the example of a leap year is (divisible by 4)
# And then the conditions of that fourth year are given afterwards.


