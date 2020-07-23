# Use the following code
# add two methods ::generic_greeting and #personal_greeting
# first is a class method and print a greeting generic to the class
# second is an instance method print a greeting custom to object

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.generic_greeting
    puts "I'm a Cat!"
  end

  def personal_greeting
    puts "Hello, my name is #{name}"
  end
end

kitty = Cat.new('Sophie')

Cat.generic_greeting
kitty.personal_greeting