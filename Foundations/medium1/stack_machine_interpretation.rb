# Create a stack-and-register program
# Set register value to 0
# Method will take a string as an arg

# Initialize the register as 0
# Split the string, and iterate through each of the commands with Array#each
# Create a method for each of the commands
require 'pry'

def minilang(commands)
  register = [0]
  stack = []
  commands.split.each do |command|
    program(command, register, stack, commands.split)
  end
end

def program(command, register, stack, commands)
  error = commands.index(command) + 1
  begin
    case command
    when /[0-9]/ then register[0] = command.to_i
    when 'PUSH'   then stack << register[0]
    when 'ADD'    then register[0] += stack.pop
    when 'SUB'    then register[0] -= stack.pop
    when 'MULT'   then register[0] *= stack.pop
    when 'DIV'    then register[0] /= stack.pop
    when 'MOD'    then register[0] %= stack.pop
    when 'POP'    then register[0] = stack.pop
    when 'PRINT'  then p register[0]
    else               p "Bad command! Error at token: #{error}!"
    end
  rescue
    p "Empty stack! Error at token: #{error}!"
  end
end

# Further exploration

minilang('3 PUSH 5 MOD PUSH 3 PUSH 7 PUSH 4 PUSH 5 MULT SUB ADD DIV PRINT')
