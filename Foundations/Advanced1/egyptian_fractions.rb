# Write two methods, one that takes a Rational number as an argument
# Returns an array of denominators that are part of an Egyptian Fraction representation of the number
# And another that takes an Array of numbers in the same format and gives the Rational number
# Egyptian Fractions E.G.
    1   1   1   1
2 = - + - + - + -
    1   2   3   6
# Series of unique 1/x numbers that will equal a given input.

# Examples:
egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)

# Use this equation
# 
# unit, remainder = fraction.denominator.divmod(fraction.numerator)
# push unit to new array 
#   do this until remainder == 0

def egyptian(fraction)
  denominators = []
  remainder = nil
  if fraction > 1
    
  #   denominators, remainder = fraction.
  until remainder == 0
    unit, remainder = fraction.denominator.divmod(fraction.numerator)
    denominators << (remainder == 0 ? unit : unit + 1)
    fraction -= Rational(1, unit + 1)
  end
  denominators
end



