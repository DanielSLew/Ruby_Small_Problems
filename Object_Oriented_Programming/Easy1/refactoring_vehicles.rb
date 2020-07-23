# Refactor the following so they all use a common superclass

class Vehicle
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicle
  WHEELS = 4
end

class Motorcycle < Vehicle
  WHEELS = 2

  def to_s
    "#{make} #{model}"
  end
end

class Truck < Vehicle
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  WHEELS = 6
end

# It wouldn't make sense to define a wheels method in Vehicle,
# every class of Vehicle could have a different wheel amount
# If anything, we could write a definition and return
#   "I have at least 1 wheel!"
