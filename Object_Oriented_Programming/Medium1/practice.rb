class AuthenticationError < StandardError; end

# A mock search engine
# that returns a random number instead of an actual count.
class SearchEngine
  def self.count(query, api_key)
    unless valid?(api_key)
      raise AuthenticationError, 'API key is not valid.'
    end

    rand(200_000)
  end

  private

  def self.valid?(key)
    key == 'LS1A'
  end
end

module DoesItRock
  API_KEY = 'LS1'

  class NoScore; end

  class Score
    def self.for_term(term)
      positive = SearchEngine.count(%{"#{term} rocks"}, API_KEY).to_f
      negative = SearchEngine.count(%{"#{term} is not fun"}, API_KEY).to_f

      positive / (positive + negative)
    rescue ZeroDivisionError
      NoScore
    end
  end

  def self.find_out(term)
    score = Score.for_term(term)

    case score
    when NoScore
      "No idea about #{term}..."
    when 0...0.5
      "#{term} is not fun."
    when 0.5
      "#{term} seems to be ok..."
    else
      "#{term} rocks!"
    end
  rescue AuthenticationError => e
    e.message
  end
end

# Example (your output may differ)

puts DoesItRock.find_out('Sushi')       # Sushi seems to be ok...
puts DoesItRock.find_out('Rain')        # Rain is not fun.
puts DoesItRock.find_out('Bug hunting') # Bug hunting rocks!
# module Town
#   class Restaurant; end
#   class Hospital; end
# end

# module Metropolis
#   class Restaurant; end
#   class Hospital; end
# end

# Metropolis::Restaurant.new

# module Speakable
#   def speak
#     "hi"
#   end
# end

# module LandVehicle
#   class Car; end
#   class Truck; end
# end

# module Aircraft
#   class Plane; end
#   class Helicopter; end
# end

# module Seacraft
#   class Boat; end
#   class Tube; end
# end

# class Vehicle
#   attr_reader :year, :model

#   def initialize(year, model)
#     @year = year
#     @model = model
#   end

#   def to_s
#     "#{year} #{model}"
#   end

#   def compare_wheels(other_vehicle)
#     display_wheels
#     other_vehicle.display_wheels
#   end

#   protected

#   def display_wheels
#     puts "This #{self} has #{wheels} wheels!"
#   end

#   private

#   def wheels
#     4
#   end
# end

# class Car < Vehicle
# end

# class Motorcycle < Vehicle

#   private

#   def wheels
#     2
#   end
# end

# class Truck < Vehicle
#   attr_reader :max_weight_tow

#   def initialize(max_weight_tow)
#     @max_weight_tow = max_weight_tow
#   end

#   def to_s
#     super + " with #{max_weight_tow} towing capacity"
#   end
# end

# class Buggy < Car
# end

# class Example
#   attr_accessor :str

#   def initialize(str)
#     @str = str
#   end

#   def self.method
#     "This is a #{self} class."
#   end

#   def method
#     "#{self} is an #{self.class} object with a value #{str}."
#   end

#   def change(new_str)
#     self.str = new_str
#   end
# end


# Example.method

# ex = Example.new

# ex.method

# ex.str

# ex.change("xyz")




# def TTTGame
#   def play
#     # functionality
#   end

#   private

#   # all the methods inside play
# end

# class Fish
#   def speak
#     "blub"
#   end
# end

# class Cat
#   def speak
#     "meow"
#   end
# end

# class Dog
#   def speak
#     "woof"
#   end
# end

# animals = [Animal.new, Cat.new, Dog.new]
# animals.each { |animal| puts animal.speak }
# # hi
# # meow
# # woof


