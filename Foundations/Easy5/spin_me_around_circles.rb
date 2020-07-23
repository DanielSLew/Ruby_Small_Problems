#Give the following method spin_me
def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

#the string returned will be a different object because it
#was split and then each element was modified. Array#each returns
#the same object it was put into it, but then joining it together
# creates a new object that is the return.
