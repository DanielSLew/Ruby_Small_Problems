# Write a method that takes a number equal to the number of "lights"
# Iterate through the lights, the number of times
# First iteration, toggle them all on
# Second iteration, toggle all multiples of 2
# Third iteration, toggle all multiples of 3, etc

# Set two constants, one for when lights are on, and one for off
# initialize a hash with entries equal to the number of lights and set them off
#   Where the Key is the light # and the value is the constant (ON/OFF)

# Create a method toggle
#   if the light is on, it turns off, vice versa

# Create a method lights
#   Initialize a count method starting at 1
#   Iterate through the hash with toggle
#   Increase the count by 1 and iterate through again
#   break the iteration when count == n
#   return the activated lights using Hash#Select, it will return an array

LIGHTS_ON = "on"
LIGHTS_OFF = "off"

def toggle(light)
  light == LIGHTS_OFF ? LIGHTS_ON : LIGHTS_OFF
end

def initialize_lights(num_of_lights)
  (1..num_of_lights).to_a.each_with_object({}) {|n, hash| hash[n] = LIGHTS_OFF}
end

def toggle_lights(num)
  lights = initialize_lights(num)
  for n in 1..num
    lights.each do |light, _|
      lights[light] = toggle(lights[light]) if light % n == 0
    end
  end
  (lights.select {|_, state| state == LIGHTS_ON}).keys
end

# Further exploration
# 1. All the lights on are perfect squares because they all get toggled an odd amount
# 2. If we used an array instead of a hash, we would have to remove the light #
#    when we "toggle" it, so it would look like, every multiple of n, below the count, add to the array
#    and remove it if the number exists in the array.
# 3. We could use String interpolation to replicate the output
#    It would look like selecting the keys for values that are off, and then on.


