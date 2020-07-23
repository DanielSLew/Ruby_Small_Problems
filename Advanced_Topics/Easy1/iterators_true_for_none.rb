# Write a method none? that mimics Enumerable#none
# return false if the block returns true
# other return true

def none?(collection)
  collection.each { |element| return false if yield(element) }
  true
end

#or

def none?(collection, &block)
  !any?(collection, &block)
end

# explicitly pass the block to #any? by including it as a parameter.