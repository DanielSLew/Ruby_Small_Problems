# Write a method that takes a string sentence as input
# Check to see if all parenthesis occuring in the string are closed
# Closed means they occur in matching '(' ')' pairs.

# Write a method for open and closed parenthesis
# Iterate through the characters
# When a parenthesis opens, activate the parentehsis method (+1 to parenthesis)
# When a parenthesis closes, deactivate the parenthesis (-1 to parenthesis)
# Multiple parenthesis can be activated at once
# Return false if parenthesis ever drops below 0 (a parenthesis is closed that wasn't open)
# Return false if the end parenthesis is not 0 (i.e. if theres a parenthesis still open)


def parenthesis_state!(state, count)
  count[0] += (state == 'open' ? 1 : -1)
  count[0] >= 0
end

def balanced?(string)
  states = {parens: 0, curly: 0, square: 0, single: 0, double: 0}
  result = string.chars.select {|char| char =~ /[()]/}.map do |char|
    if char == '('
      parenthesis_state!('open', parenthesis)
    else char == ')'
      parenthesis_state!('closed', parenthesis)
    end
  end
  !result.include?(false) && (parenthesis[0] == 0)
end

def states!(state, character)
  case character
  when '(' then state[:parens] += 1
  when ')' then state[:parens] -= 1
  when '{' then state[:curly] += 1
  when '}' then state[:curly] -= 1
  when '[' then state[:square] += 1
  when ']' then state[:square] -= 1
  when "'" then state[:single] += (state[:single] == 0 ? 1 : -1)
  when "\"" then state[:double] += (state[:double] == 0 ? 1 : -1)
  end
end


def balanced?(string)
  states = {parens: 0, curly: 0, square: 0, single: 0, double: 0}
  string.each_char do |char|
    states!(states, char)
    break if states.values.any? {|n| n < 0 }
  end

  states.values.all? {|n| n == 0 }
end



