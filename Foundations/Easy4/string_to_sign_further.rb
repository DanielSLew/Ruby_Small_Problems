DIGITS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
           '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_digits(string)
  string.chars.map! do |char|
    DIGITS[char]
  end
end

def string_to_integer(string)
  digits = string_to_digits(string)
  number = 0
  index = -1
  digits.reverse!.each do |digit|
    index += 1
    number += (digit * (10**index))
  end

  number
end

def string_to_signed_integer(string)
  int_sign = string.start_with?('-') ? -1 : 1
  string_to_integer(string.sub(/[\+-]/, '')) * int_sign
end

puts string_to_signed_integer("-12491") == -12491