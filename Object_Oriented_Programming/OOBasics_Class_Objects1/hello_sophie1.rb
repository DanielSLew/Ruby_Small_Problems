# Use the previous code
# add a parameter to initialize to provide a name for Cat object
# use instance variable to print a greeting with the provided name

class Cat

  def initialize(name)
    @name = name
    puts "Hello! My name is #{@name}"
  end
end

kitty = Cat.new('Sophie')
kitty.name