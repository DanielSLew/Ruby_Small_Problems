# Now that we have a Walkable module, we need to add a Noble class
# Noble class shows the title and name when #walk is called:

byron = Noble.new("Byron", "Lord")
p byron.walk
# => "Lord Byron struts forward"
# We must have access to both name and title because they are needed for other purposes that we aren't showing here.

byron.name
=> "Byron"
byron.title
=> "Lord"


module Walkable
  def walk
    "#{name} #{gait} forward."
  end
end

class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

end

class Person < Animal
  include Walkable

  private

  def gait
    "strolls"
  end
end

class Noble < Person
  attr_reader :title

  def initialize(name, title)
    super(name)
    @title = title
  end

  def name
    "#{title} #{@name}"
  end

  private

  def gait
    "struts"
  end
end

class Cat < Animal
  include Walkable

  private

  def gait
    "saunters"
  end
end

class Cheetah < Cat
  private

  def gait
    "runs"
  end
end

# You need to modify the code so that this works:

mike = Person.new("Mike")
mike.walk
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
kitty.walk
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
flash.walk
# => "Flash runs forward"
