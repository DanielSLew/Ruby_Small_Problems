def digit_list(num)
  if (num.is_a? Integer) == false
    puts "You must enter a positive number!"
  elsif num <= 0
    puts "You must enter a positive number!"
  elsif
    list = num.to_s.split("")
    list.map! {|x| x.to_i }
  end
end

p digit_list(41241)
p digit_list("41241")
p digit_list(-1234)
p digit_list("-4131")
