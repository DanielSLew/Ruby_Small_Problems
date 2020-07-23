# Define a method that takes text and prints it within a box
# construct a message using MSG >>
# Add a new variable pad which equals length of string
# Use that new variable to add spaces or lines to pad the box to the appropriate length
# return the MSG >>

def print_in_box(string)
  pad = string.length
  puts <<-MSG
  +-#{'-' * pad}-+
  | #{' ' * pad} |
  | #{string} |
  | #{' ' * pad} |
  +-#{'-' * pad}-+
  MSG
end

def message_array(string)
  message = []

  loop do 
    message << string.slice!(0..75)
    break if string.empty?
  end

  message
end

def print_message(message)
  count = 0

  loop do
    break if count + 1 == message.size
    puts "| #{message[count]} |"
    count += 1
  end

  if count > 0
    puts "| #{message[count]}#{' ' * (76 - message[count].size)} |"
  else
    puts "| #{message[count]} |"
  end
end


def print_in_box(string)
  message = message_array(string)
  pad = message[0].length

  horizontal_rule = "+#{'-' * (pad + 2)}+"
  empty_line = "|#{' ' * (pad + 2)}|"

  puts horizontal_rule
  puts empty_line
  print_message(message)
  puts empty_line
  puts horizontal_rule
end
