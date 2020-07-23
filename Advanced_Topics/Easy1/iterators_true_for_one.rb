# Write a method that mimics Enumerable#one?
# returns true if exactly one element returns true when passed to the block
# false if less or more return true.

def one?(collection)
  true_count = 0
  collection.each do |element| 
    true_count += 1 if yield(element)
    return false if true_count > 1
  end
  true_count == 1
end