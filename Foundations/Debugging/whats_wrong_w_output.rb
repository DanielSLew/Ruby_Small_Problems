# Help fix this code to print an array of strings in reverse numerical order
# do not remove any code to get the correct output

arr = ["9", "8", "7", "10", "11"]
p (arr.sort do |x, y|
    y.to_i <=> x.to_i
  end)


# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

# If we wrap the entire block that is passed to sort with the calling object, we can preserve
# the return and print the correct reverse order.
# we can also solve this if we used a one line block by using {}'s instead of do..end.