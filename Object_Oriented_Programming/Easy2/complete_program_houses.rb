# modify House class so the above program will work.

class House
  attr_reader :price
  include Comparable

  def initialize(price)
    @price = price
  end

  def <=>(other)
    price <=> other.price
  end
end

# Or include Comparable and define this:
def <=>(other)
  price <=> other.price
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

# and this output:

Home 1 is cheaper
Home 2 is more expensive

# Further exploration
# Houses can be compared on other factors like sq ft, etc. So it's a good
# idea not to only use price in your compare, we could create a general
# compare method where we put in the type of parameter we want to compare by

