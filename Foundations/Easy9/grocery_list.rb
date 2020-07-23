# Write a method that takes a grocery list (arr) of fruits with quantities
# Convert to array of the correct number of each fruit

# Initialize new list
# Use array#each to get into the subarrays
# append the fruit to new list the amount of times indicated
# Return the new list

def buy_fruit(grocery_list)
  list = []
  grocery_list.each do |fruits|
    fruits[1].times { list << fruits[0] }
  end
  list
end

def buy_fruit(list)
  list.map {|fruit, quantity| [fruit] * quantity }.flatten
end
