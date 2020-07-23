# Write a method all? that mimics Enumerable#all?
# return false as soon as the block returns false

def all?(collection)
  collection.each { |element| return false unless yield(element) }
  true
end