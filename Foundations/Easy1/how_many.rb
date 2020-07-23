
require 'pry'
vehicles = %w(car car truck car SUV truck motorcycle motorcycle car truck suv)

def word_results(word, number)
  puts "#{word} => #{number.flatten.length}"
end

def delete_word(array, word)
  array.delete_if { |x| x == word }
end

def downcase_array(array)
  array.join(' ').downcase.split
end

def count_occurences(array)
  count = 0
  words = downcase_array(array).uniq.sort
  downcase_array(array)
  loop do
    word_count_numbers = []
    word_count_numbers << array.sort.take_while { |x| x == words[count] }
    break if word_count_numbers.flatten.empty?
    word_results(words[count], word_count_numbers)
    delete_word(array, words[count])
    count += 1
  end
end

count_occurences(vehicles)

#2nd time

# Write a method that counts the number of occurences of each element
# in a given array

vehicles = %w(car car truck car SUV truck motorcycle motorcycle car truck)

# words are case sensitive
# expected output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# define a method called count_occurences with 1 parameter
# Initialize a variable and set it to each_with_object and make the object a hash set to 0.
#   for each iteration use hash[value] += 1
# use the method each on the hash and the method puts with the 'key => value' as the argument.

def count_occurences(array)
  count = array.each_with_object(Hash.new(0)) do |value, hash|
            hash[value.downcase] += 1
          end
  count.each { |value, count| puts "#{value} => #{count}" }
end

count_occurences(vehicles)
