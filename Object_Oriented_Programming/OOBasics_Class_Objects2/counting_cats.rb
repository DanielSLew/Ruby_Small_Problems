# Use the following code
# Create a class named Cat that tracks the number of times a new Cat is instantiated
# total number of cats should be printed then ::total is invoked

class Cat
  @@total_cats = 0

  def initialize
    @@total_cats += 1
  end

  def self.total
    @@total_cats
  end
end

kitty1 = Cat.new
kitty2 = Cat.new

Cat.total