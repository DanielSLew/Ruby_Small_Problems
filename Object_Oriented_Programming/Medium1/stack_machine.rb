# Create a stack machine interpreter
class Minilang
  COMMANDS = %w(PUSH ADD SUB MULT DIV MOD POP PRINT)

  def initialize(program)
    @register = 0
    @stack = []
    @program = program
  end

  def eval(args = {})
    commands = format(@program, args).split
    
    commands.each do |command|
      valid_token(command)
      COMMANDS.include?(command) ? send(command.downcase) : place_value(command)
    end

  rescue RuntimeError => e
    puts e.message
  end

  private

  def valid_token(command)
    return if command.to_s == command.to_i.to_s || COMMANDS.include?(command)
    raise("Invalid Token: #{command}")
  end

  def top_stack_value
    @stack.empty? ? raise("Empty Stack!") : @stack.pop
  end

  def place_value(value); @register = value.to_i; end

  def push; @stack << @register; end

  def add; @register += top_stack_value; end

  def sub; @register -= top_stack_value; end

  def mult; @register *= top_stack_value; end

  def div; @register /= top_stack_value; end

  def mod; @register %= top_stack_value; end

  def pop; @register = top_stack_value; end

  def print; p @register; end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)

CENTIGRADE_TO_FAHRENHEIT =
  '5 PUSH %<degrees_c>d PUSH 9 MULT DIV PUSH 32 ADD PRINT'
minilang = Minilang.new(CENTIGRADE_TO_FAHRENHEIT)
minilang.eval(degrees_c: 100)
# 212
minilang.eval(degrees_c: 0)
# 32
minilang.eval(degrees_c: -40)
