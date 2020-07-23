# Use the following code
# add appropriate accessor methods
# last_name getter shouldn't be visible outside the class
# while the firsT_name getter should be visible outside class

class Person
  attr_accessor :first_name
  attr_writer :last_name

  def first_equals_last?
    first_name == last_name
  end

  private

  attr_reader :last_name

end

person1 = Person.new
person1.first_name = 'Dave'
person1.last_name = 'Smith'
puts person1.first_equals_last?