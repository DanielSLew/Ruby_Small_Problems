# Write a method that takes a string as an arg
# Returns a new string w/ the original value using staggered capitalization
# Characters that are not letters should be counted when staggering but not changed

# Initialize a count = -1
# Call String#chars and then use Array#map to iterate
# increase count by 1
# if count is even, upcase, if not, downcase and then join the characters

def staggered_case(string)
  result = ''
  puts 'Do you want to start the staggered capitalization on the first or second letter?'

  loop do
    result = gets.chomp.downcase
    break if %w(first second).include?(result)
    puts 'Please put either first or second!'
  end

  count = result == 'first' ? -1 : 0

  string.chars.map do |char|
    count += 1
    count.even? ? char.upcase : char.downcase
  end.join('')
end
