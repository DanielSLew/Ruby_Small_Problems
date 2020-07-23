# write a class that implements a fixed-length array
# fixed-length array is an array that always has a fixed num of elements

class FixedArray
  attr_reader :elements

  def initialize(size_of_array)
    @elements = Array.new(size_of_array)
  end

  def []=(index, new_value)
    validity_check(index)
    @elements[index] = new_value
  end

  def [](index)
    validity_check(index)
    elements[index]
  end

  def to_a
    elements.clone
  end

  def to_s
    to_a.to_s
  end
  
  private

  def validity_check(index)
    elements.fetch(index)
  end
end


fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[7] = 3
  puts false
rescue IndexError
  puts true
end
