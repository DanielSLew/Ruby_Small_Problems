# Use the following code
# create a Towable module that contains a method named tow
# tow prints I can tow a trailer! when invoked
# include the module in the truck class

module Towable
  def tow
    puts "I can tow a trailer!"
  end
end

class Truck
  include Towable
end

class Car
end

truck1 = Truck.new
truck1.tow
