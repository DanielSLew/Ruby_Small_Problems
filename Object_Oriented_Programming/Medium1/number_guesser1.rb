# Update the previous GuessingGame class to accept a high and low value
# Also change the number of guesses to use this formula:
# Math.log2(size_of_range).to_i + 1

class GuessingGame
  RANGE = 1..100
  MAX_GUESSES = 7

  def play
    initialize_new_round
    loop do
      guess_remaining
      player_guess
      display_results
      break if game_over?
    end
    display_final_results
  end

  private

  def guess_remaining
    puts @guesses == 1 ? "You have 1 guess remaining." : "You have #{@guesses} guesses remaining."
  end

  def player_guess
    choice = nil
    loop do
      print "Enter a number between #{RANGE.first} and #{RANGE.last}: "
      choice = gets.chomp.to_i
      break if RANGE.to_a.include? choice
      print "Invalid guess. "
    end
    @guesses -= 1
    @guess = choice
  end

  def display_results
    case @guess <=> @number
    when 1  then puts "Your guess is too high."
    when -1 then puts "Your guess is too low."
    when 0  then puts "That's the number!."
    end
  end

  def display_final_results
    puts @guess == @number ? "You won!" : "You have no more guesses. You lost!"
  end

  def game_over?
    @guess == @number || @guesses == 0
  end

  def initialize_new_round
    @guesses = MAX_GUESSES
    @number = rand(RANGE)  
  end
end

game = GuessingGame.new
game.play