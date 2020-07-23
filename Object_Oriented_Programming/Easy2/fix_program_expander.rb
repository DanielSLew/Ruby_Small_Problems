# What is wrong with the following code: What fixes would you make

class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    self.expand(3)
  end

  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander

# I would change the private method call to protected, or else #to_s would
# not be able to access it by calling on self.

class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    self.expand(3)
  end

  protected

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander
