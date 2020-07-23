# following code is flawed
# currently allows @name to be modded from outside the method via a destructive call
# fix the code so that it returns a copy of @name instead of a reference to it

class Person
  def initialize(name)
    @name = name
  end

  def name
    @name.clone
  end
end

person1 = Person.new('James')
person1.name.reverse!
puts person1.name