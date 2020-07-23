# Use the following code
# determine the lookup path used when invoking cat1.colour
# only list the classes that were checked by Ruby when searching for the #colour method

class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new('Black')
cat1.color

# Cat, Animal