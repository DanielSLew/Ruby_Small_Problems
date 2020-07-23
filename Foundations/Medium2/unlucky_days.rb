# Write a method that takes a year as an arg
# Return the number of Friday the 13th's that appear in each year
# Assume that the year is after 1752

# Create a constant SECONDS in MINUTE, SECONDS IN HOUR, SECONDS IN DAY
# Create a new time instance using the year
# create a count and start at 0
# Initialize a loop that breaks if the Time instance of year is larger than the argument year
# Add 1 to count is Time#day equals 13 and Time#wday equals 5
# increase the time instance by a day by adding SECONDS IN DAY to it
# return the count
require 'pry'
SECONDS_IN_MINUTE = 60
SECONDS_IN_HOUR = SECONDS_IN_MINUTE * 60
SECONDS_IN_DAY = SECONDS_IN_HOUR * 24

def friday_13th(year)
  t = Time.new(year)
  count = 0
  loop do
    break if t.year > year
    count += 1 if t.day == 13 && t.wday == 5
    t += SECONDS_IN_DAY
  end
  count
end


def five_fridays(year)
  t = Time.new(year)
  months__with_five = 0
  loop do
    break if t.year > year
    fridays = 0
    current_month = t.month
      loop do
        break if t.month > current_month || t.year > year
        fridays += 1 if t.friday?
        t += SECONDS_IN_DAY
      end
    months__with_five += 1 if fridays == 5
  end
  months__with_five
end

puts friday_13th(1999)

# OR

def five_friday(yr)
  1.upto(12).with_object([]) do |mth, count|
    count << 1 if (Date.new(yr, mth).step(Date.new(yr, mth, -1)).select { |d| d.friday? }.size == 5)
  end.size
end

