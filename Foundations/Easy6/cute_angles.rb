# Define a method that takes a floating point number representing an
#   an angle between 0 and 360 degrees
#   It will return a string that represents the angle in degrees, minutes and seconds
# Initialize constants for minutes in degrees and seconds in minutes
# Take the number use Integer#divmod(1) and assign it degrees, remainder
# Take the remainder and multiply by MINUTES_IN_DEGREES to get minutes
# take % 1 of the minutes and multiply by SECONDS_IN_MINUTES to get seconds
# round minutes and seconds to 2 digits and use 2 leading zeros for them.

MINUTES_IN_DEGREES = 60
SECONDS_IN_MINUTES = 60
DEGREE = "\xC2\xB0"
MAX_DEGREE = 360

def dms(degree)
  degree = degree % MAX_DEGREE
  degrees, remainder = degree.divmod(1)
  minutes = remainder.round(2) * MINUTES_IN_DEGREES
  seconds = (minutes % 1) * SECONDS_IN_MINUTES
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end
