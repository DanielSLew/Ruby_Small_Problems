# Define a method that takes an array of integers between 0-19
#   Sort these numbers based on their name in plain english.
# Initialize a hash constant zero_to_nineteen that has numbers as key and word as value
# Create a new variable sorted_number = []
# Use Array#sort_by and sort by hash values to get correct order
ZERO_TO_NINETEEN = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four',
                     5 => 'five', 6 => 'six', 7 => 'seven', 8 => 'eight',
                     9 => 'nine', 10 => 'ten', 11 => 'eleven', 12 => 'twelve',
                     13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 16 => 'sixteen',
                     17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen', 0 => 'zero'
                   }

def alphabetic_number_sort(int_arr)
  int_arr.sort_by { |int| ZERO_TO_NINETEEN[int] }
end

#Array#sort_by! would mutate the original item passed through

alphabetic_number_sort((0..19).to_a)

#write same method but use Ennumerable#sort instead

def alphabetic_number_sort(int_arr)
  int_arr = int_arr.map { |int| ZERO_TO_NINETEEN[int] }
  int_arr.sort.map { |int| ZERO_TO_NINETEEN.key(int) }
end