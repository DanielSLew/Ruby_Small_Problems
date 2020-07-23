# modify the following code to accept a string containin a first and last name
# name should be split into two instance variables in setter method
# join them in the getter method to form a full name

class Person

  def name=(name)
    @first_name, @last_name = name.split
  end

  def name
    @first_name + ' ' + @last_name
  end

end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name