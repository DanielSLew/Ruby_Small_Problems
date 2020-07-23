# Modify the staggered_caps method so it ignores non-alphabetic chars
# The return string should still include those non-alphabetic chars


def staggered_case(string)
  count = -1

  string.chars.map do |char|
    if char =~ /[^a-zA-Z]/
      char
    else 
      count += 1
      count.even? ? char.upcase : char.downcase
    end
  end.join('')
end
