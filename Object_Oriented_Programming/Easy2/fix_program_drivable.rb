# correct the following to make it work
# Assume that the Car class has a complete implementation
# just make the smallest change to ensure cars have access to drive method


module Drivable
  def drive
  end
end

class Car
  include Drivable
end

bobs_car = Car.new
bobs_car.drive