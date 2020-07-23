# - Define a method 'century' that takes an integer as input
# - divide the integer by 100 to determine what century it is in
#   - Add 1 to century to account for the first century.
#   - if a year ends in '00' subtract 1 (because centuries begin with years that end in 01)
#   - convert the century to a string
# - Use a case statement for century to detemine what to concatenate
#   to the end of the number (st, nd, rd, or th)
#   - Control for 11, 12, and 13 being special instances.
#   - Use #regex to find what century ends with.

def century_suffix(century)
 return 'th' if [11, 12, 13].include?(century)

 case century
  when /1\z/
    'st'
  when /2\z/
    'nd'
  when /3\z/
    'rd'
  else
    'th'
  end
end

def century(year)
  century = year / 100 + 1
  (century -= 1) if year.to_s.end_with?('00')
  century + century_suffix(century.to_s)
end

# 2nd TRY

# Write a method that takes a year as input and returns the century
# Return value should be a string that begins with the century number
#   and ends with 'st', 'nd', 'rd', or 'th' as appropriate
# New centuries begin in years that end with 01
#   1901-2000 is the 20th century

# Examples:

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

# Define a method named century with 1 parameter(year)
# Divide year by 100 and add 1 to get the century.
# To control for the century starting in 01, subtract 1 to century if #to_s#end_with?('00')
# Initialize variable suffix and assign it to an if condition
#   if century % 100 is either 11, 12 or 13 return 'th'
#   else use a case statement evaluating only the last digit of century to add the appropriate suffix to the century
# return century turned into a string with the suffix concatenated

def century(year)
  century = year/100 + 1
  century -= 1 if year.to_s.end_with?('00')
  suffix = if [11, 12, 13].include?(century % 100)
             'th'
           else
             case century % 10
             when 3 then 'rd'
             when 2 then 'nd'
             when 1 then 'st'
             else        'th'
             end
           end
  century.to_s + suffix
end
