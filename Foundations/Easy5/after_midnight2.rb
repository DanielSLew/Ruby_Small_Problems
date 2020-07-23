# Define two methods that takes a time of day in 24 hr format
# Return # of minutes before or after midnight respectively
# - Use String#split(':') to split the hour and minute up to their own variables
# - multiply hour by # of minutes and add the minutes to get total minutes.
# - Take the number and % by the # of minutes in a day to make sure you get a number between 0..1439
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(time)
  time = time.split(':')
  hour, minute = time[0].to_i, time[1].to_i
  # or use
  #hour, minute = time.split(':').map(&:to_i)
  (hour * MINUTES_PER_HOUR + minute) % MINUTES_PER_DAY
end

after_midnight("12:34")

def before_midnight(time)
  time = time.split(':')
  hour, minute = time[0].to_i, time[1].to_i
  -minutes = (hour * MINUTES_PER_HOUR + minute) % -MINUTES_PER_DAY
end

before_midnight("12:34")

#Further exploration using TimeClass

TIME = Time.new(2019)
SECONDS_PER_MINUTE = 60
SECONDS_PER_HOUR = SECONDS_PER_MINUTE * MINUTES_PER_HOUR

def after_midnight(time)
  hour, minute = time.split(':').map(&:to_i)
  t = Time.new(2019, 1, 1, hour, minute)
  ((t - TIME) / SECONDS_PER_MINUTE) % MINUTES_PER_DAY
end

def before_midnight(time)
  (MINUTES_PER_DAY - after_midnight(time)) % MINUTES_PER_DAY
end
