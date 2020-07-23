def is_odd?(num)
  case num.remainder(2)
    when 1
      true
    when -1
      true
    else
      false
  end
end

puts is_odd?(5)
puts is_odd?(-3)
puts is_odd?(-6)
puts is_odd?(0)
puts is_odd?(3)
