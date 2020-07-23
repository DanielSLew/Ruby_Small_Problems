# Create a module named Transportation
# Contains three classes: Vehicles, Truck, and Car
# Truck and Car should both inherit from Vehicle

module Transportation
  class Vehicles ; end

  class Truck < Vehicles ; end

  class Car < Vehicles ; end
end

# Can instantiate by using
Transportation::Truck.new