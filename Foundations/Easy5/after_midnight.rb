# Define a method that takes an integer where positive is that amount of 
#   minutes after midnight and negative is that many before midnight
# - Take the integer and % 1440, this gives you the minutes under 
#   1440 which is what you'll use to figure out the time.
# - Take the remainder and divide it by 60 and save to variable 'hour'.
# - Take the original remainder and modulo by 60 and save to variable 'minute'.
# - Return the string as "'hour':'minute'"
#   - Use Kernel#sprintf on both hour and minute so 2 digits (default to 0) are always displayed.

SECONDS_PER_MINUTE = 60
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR
TIME = Time.new(2019, 9, 29)

def time_of_day(int)
  int = int % MINUTES_PER_DAY
  hour = sprintf("%02d", (int / MINUTES_PER_HOUR))
  minute = sprintf("%02d", (int % MINUTES_PER_HOUR))
  "#{hour}:#{minute}"
end

def time_of_day(delta_minutes)
  delta_seconds = delta_minutes * SECONDS_PER_MINUTE
  time_adjusted = TIME + delta_seconds
  time_adjusted.strftime("%H:%M on %A")
end
