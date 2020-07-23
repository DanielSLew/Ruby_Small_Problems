# Write a method that takes an array as an arg
# method should yield the contents of the array to a block
# block should assign block variables in such a way it ignores first two elems
# group all remaining elements as a raptors array

birds = %w(raven finch hawk eagle)

def types(array)
  yield(array)
end

birds_method(birds) {|_, _, *raptors| puts raptors }
