# We have a listening device that lets us record something that is said
# and stores it for later use
# Listen for something, if anything said, record for later use
#   if nothing said, then do not record

# Anything that is said is retrieving via a block
# can also output what was recently recorded using Device#play

class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end

  def listen
    record(yield) if block_given?
  end

  def play
    puts @recordings.last
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"