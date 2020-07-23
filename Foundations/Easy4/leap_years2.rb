def leap_year?(year)
  year < 1752 ? 
    (year % 4 == 0) && (year % 100 != 0 || year % 400 == 0) :
    (year % 4 == 0)
end

# The hebrew calendar has leap years which add an extra month (12 => 13)
# along with 2 of its months that can either have 29 or 30 days.
# the total days in a year can vary between 353 - 355, and 383-385 days.
# The two months with 29 or 30 days are there to make sure certain holidays
# don't fall on certain days of the week.
# The leap years are every 2-3 years depending on which is needed to correct the time of year.

# 2nd TRY -----------------------------------------------------------

# Update the previous leap year method to include this info:
# Before the year 1752 they used the Julian Calendar which was a leap year every 4 years
# The conditions were only added after 1753

def leap_year?(year)
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end

# Examples:

leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true

# Add in a condition that returns true if the year < 1752 && year is divisible by 4 then it's true
# Otherwise keep it the same

def leap_year?(year)
  return true if year < 1752 && year % 4 == 0
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end