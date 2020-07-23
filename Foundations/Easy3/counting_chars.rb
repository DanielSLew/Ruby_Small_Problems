# - Ask for an input, can be word or words
# - remove the spaces in the input
# - count the chars in the input
# - return the result

puts "Please write a word or multiple words:"
words = gets.chomp
chars = words.split.join

puts "There are #{chars.length} characters in \"#{words}\"."

# 2nd TRY


# Write a program that will ask a user to an input of a word or multiple words
# give back the number of characters
# spaces should not be counted as a character

# Examples
# input:
# Please write word or multiple words: walk
# output:
# There are 4 characters in "walk".

# input:
# Please write word or multiple words: walk, don't run
# output:
# There are 13 characters in "walk, don't run".

# Punctuation is included

# Call #p and #gets#chomp to get user input
# Initialize variable word and assign to user input
# initialize variable word_count and assign it to the result of:
#   call #count on word and use regex to only include non-space characters ("^ ")
# Call puts to output the results of count of word

p "Please write word or multiple words:"
word = gets.chomp

word_count = word.count "^ "

puts "There are #{word_count} characters in \"#{word}\""

