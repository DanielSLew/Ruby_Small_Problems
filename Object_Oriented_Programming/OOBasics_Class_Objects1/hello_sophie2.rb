# Use the previous code
# add a getter method named name
# invoke it in place of @name in #greet

class Cat
  attr_reader :name
  
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}"
  end
end

kitty = Cat.new('Sophie')
kitty.greet