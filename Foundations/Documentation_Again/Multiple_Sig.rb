a = %w(a b c d e)

puts a.fetch(7) #will show an INDEX ERROR

puts a.fetch(7, 'beats me') #will return 'beats me' as default

puts a.fetch(7) {|index| index**2 } #returns "49"
