# Fix the following number guessing game that is supposed to pick a random
# number between 1 and a provided max number and offers a given number of attempts ot guess

def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number

      # Try again:
      guess_number(max_number, max_attempts)
    end
  end
end

guess_number(10, 3)

# line 31 is calling for a whole new game of guess number if you don't guess it
# on the first try because it also exists within the main game loop.
# To fix this issue we need to move guess_number(max_number, max_attempts) to
# line 34, before the last end of the method.
# There is also no clear line as to when a game ends and new one begins.
# As well as the game does not end when you win, so you need to add a break condition if the winning number is found

def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number
    end
  end
  puts "let's play again"
  guess_number(max_number, max_attempts)
end

guess_number(10, 3)
