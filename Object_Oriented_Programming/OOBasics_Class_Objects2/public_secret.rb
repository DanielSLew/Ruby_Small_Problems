# Use the following code
# create a class named Person with an instance variable named @secret
# use a setter method to add a value to @secret
# use a getter method to print @secret

class Person
  attr_accessor :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'
puts person1.secret