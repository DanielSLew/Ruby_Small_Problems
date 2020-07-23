# Circular queue
#   collection of objects stored in a buffer where you can add a specific
#   amount of objects, removing the first object first, and the last object last
# Oldest objects removed first

# Write a CircularQueue class that implements this for arbitrary objs
# The class should obtain the buffer size with an arg provided to ::new

# include the following methods:
# enqueue to add an object to the queue
# dequeue to remove (and return) the oldest object in the queue
#   it will return nil if queue is empty

# nil can be used to designate empty spots in buffer

# Ex.

class CircularQueue
  attr_reader :queue, :object_number
  attr_accessor :current_index

  def initialize(buffer_size)
    @queue = Array.new(buffer_size)
    @current_index = 0
    @object_number = 0
  end

  def enqueue(object)
    @object_number += 1
    @queue[current_index] = CustomObject.new(object, object_number)
    increase_index
  end

  def dequeue
    return nil if oldest_object == nil
    return_value = oldest_object.value
    @queue[queue.index(oldest_object)] = nil
    return_value
  end

  private

  def custom_object?(obj)
    obj.class == CustomObject
  end

  def oldest_object
    custom_objects = @queue.select { |obj| custom_object?(obj) }
    custom_objects.min_by { |obj| obj.object_number }
  end

  def increase_index
    self.current_index = current_index == queue.size - 1 ? 0 : current_index + 1
  end
end

class CustomObject
  attr_reader :object_number, :value

  def initialize(value, number)
    @object_number = number
    @value = value
  end
end

# Further exploration:

class CircularQueue
  def initialize(size)
    @buffer = [nil] * size
  end

  def dequeue
    return_value = @buffer.reject(&:nil?).first
    @buffer[@buffer.index(return_value)] = nil
    return_value
  end

  def enqueue(value)
    @buffer.push(value).shift 
  end
end

queue = CircularQueue.new(3)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil
