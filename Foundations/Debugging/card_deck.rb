# The following code produces a TypeError
# After the TypeError is fixed, it still produces a sum too low.

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
require 'pry'
deck = { :hearts   => [], # or use cards.clone for most succinct answer
         :diamonds => [],
         :clubs    => [],
         :spades   => [] }

cards.each do |card|
  deck.keys.each do |suit|
    deck[suit] << card
  end
end

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  binding.pry
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  binding.pry
  score_arr = remaining_cards.map do |card|
                score(card)
              end
  binding.pry
  sum += score_arr.sum
end

puts sum

# On line 41, remaining_cards.map is creating a new array, and that return wasn't saved
# Line 45 also has to be changed to reference the new variable score_arr.

# On line 6 the local variable deck was pointing all of its keys to the same object
# variable, so when that object was mutated, they all were mutated. When 4 cards were taken
# from the deck, the same 4 cards disappeared across all the suits.
# To fix this we created separate object arrays for each suit by first intializing each key in deck to an empty array
# Then we iterated through the local variable cards with Array#each and then doing the same for local variable suit
# On each iteration we added the value to the Key-value pair.

