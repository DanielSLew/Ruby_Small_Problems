# Use the previous code
# add a setter method named name
# rename kitty to "Luna"
# invoke #greet again

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.name = "Luna"
kitty.greet