# given the following:

class Pet
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
  def initialize(name, age, fur)
    super(name, age)
    @fur = fur
  end

  def to_s
    "My cat #{@name} is #{@age} years old and has #{@fur} fur."
  end
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch

# Update this code so that when you run it, you see the following output:

My cat Pudding is 7 years old and has black and white fur.
My cat Butterscotch is 10 years old and has tan and white fur.

# If we added the @fur(or @colour) instance variable to Pet's initialize
# instead we run the issue if down the road we create a Pet subclass that 
# doesn't have any fur or colours.
# we would be able to get rid of Cat's initialize method if we moved the
# @fur instance variable to Pet.