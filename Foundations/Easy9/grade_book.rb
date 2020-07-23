# Write a method that determines the mean of 3 scores passed to it
# Returns the letter value associated with that grade
# Values are all between 0-100

# Take the mean of the array, using arr.sum(0.0) / arr.length
# Use a case statement to figure out the grade

def get_grade(*grades)
  av_grade = grades.sum(0.0) / grades.length
  case av_grade
  when 100..Float::INFINITY then 'A+'
  when 90..99               then 'A'
  when 80..89               then 'B'
  when 70..79               then 'C'
  when 60..69               then 'D'
  else                           'F'
  end
end

# Further exploration
