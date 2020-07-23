# The following code raises a SystemStackError, fix the code so it does the following:

# def move(n, from_array, to_array)
#   to_array << from_array.shift
#   move(n - 1, from_array, to_array)
# end

# # Example

# todo = ['study', 'walk the dog', 'coffee with Tom']
# done = ['apply sunscreen', 'go to the beach']

# move(2, todo, done)

# p todo # should be: ['coffee with Tom']
# p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

# After investigating a SystemStackError means there is a stack overflow, most likely from
# calling the method within the method. This is recursion without a base case (a condition
# which it wil stop) and calling the method in the method an infinite amount of times
# We can change line 4 and 5 to use the Integer#times method. and use n.times do

def move(n, from_array, to_array)
  n.times do
    to_array << from_array.shift
  end
end

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done

# if n is greater than the length of from_array, it will populate to_array with nils for each time it has no value to pass.