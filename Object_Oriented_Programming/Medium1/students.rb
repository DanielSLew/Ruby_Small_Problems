# Change the below classes so that:
# 1. Graduate students have the option to use on-campus parking while Undergraduate do not
# 2. Graduate and Undergraduate have a name and year associated with them

class Student
  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate < Student
  def initialize(name, year, parking)
    super(name, year)
    @parking = parking
  end
end

class Undergraduate < Student

end