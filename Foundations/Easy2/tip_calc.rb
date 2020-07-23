# puts "How much is the bill?"
# bill = gets.chomp.to_f

# puts "What is the tip percentage?"
# tip_percent = gets.chomp.to_f

# tip = ((tip_percent/100) * bill).round(2).to_f
# total_bill = (tip + bill).to_f

# puts "The tip is $%.2f\n" % tip +
# "The total is $%.2f" % total_bill

# Create a tip calculator
# The program should prompt for a bill amount and a tip rate
# The program must compute the tip and display both the tip and the total bill amount

# Example:

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# Use the methods #gets#chomp#to_i to get user input asking for the bill and tip percentage
#   Initialize and assign to bill, and tip_percentage respectively
# Initialize variable tip and assign it to bill divided by tip divided by 100
# display both the tip and the total(bill + tip) using puts

p 'What is the bill?'
bill = gets.chomp.to_f

p 'What is the tip percentage?'
tip_percentage = gets.chomp.to_f

tip = (bill * tip_percentage / 100).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{format("%.2f", total)}"
