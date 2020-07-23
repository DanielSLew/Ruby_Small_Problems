# Use the following code
# Create a clas named Cat that prints a greeting when #greet is invoked
# include the name and colour of a cat
# use a constant to define the colour

class Cat
  COLOUR = "purple"

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello my name is #{self.name} and I'm a #{COLOUR} cat!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet