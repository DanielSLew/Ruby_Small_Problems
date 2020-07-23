# Use the following code
# mod start_engine in truck by appending 'Drive fast, please!'
# to the return value of #start_engine in Vehicle
# the 'fast' in the String should be the value of speed

class Vehicle
  def start_engine
    'Ready to go!'
  end
end

class Truck < Vehicle
  def start_engine(speed)
    super() + " Drive #{speed}, please!"
  end
end

truck1 = Truck.new
puts truck1.start_engine('fast')
