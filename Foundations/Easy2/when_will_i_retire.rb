puts 'What is your age?'
age = gets.chomp.to_i

puts 'When would you like to retire?'
retire = gets.chomp.to_i

current_year = Time.now.year
years_of_work = retire - age
year_of_retire = current_year + years_of_work

puts "It's #{current_year}, you will retire in #{year_of_retire}
You have only #{years_of_work} years of work to go!"

# 2nd TIME


# Build a program that displays when the user will retire
# And how many years they have to work till retirement

# Example:

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# use #p to ask for the age and the age of retirement
# Initialize local variable age and age_of_retirement to gets.chomp.to_i in both cases
# initialize variable time and assign it to Time.new
#   This will set it to this year
#   Initialize variable current_year and set it to time.year
# Initialize variable work_left and assign it to age_of_retirement - age
# Initialize variable year_of_retirement and assign it to age + year

# Output the year, the year_of_retirement, and work_left in a string.

p "What is your age?"
age = gets.chomp.to_i

p "At what age would you like to retire?"
age_of_retirement = gets.chomp.to_i

current_year = Time.new.year
work_left = age_of_retirement - age
year_of_retirement = year + work_left

puts "It's #{current_year}. You will retire in #{year_of_retirement}. " +
     "You only have #{work_left} years to go!"