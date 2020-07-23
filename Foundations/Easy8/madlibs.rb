# Create a madlibs program that prompts for noun, verb, adjective, and adverb

# Create an varialbe for each input you ask for
# Check if input is valid
# concatenate the variables in a sentence

def valid_word?(string)
  !(string =~ /[^a-zA-Z]/)
end

def madlibs
  noun, verb, adjective, adverb = '', '', '', ''
  loop do
    puts "Enter a noun: "
    noun = gets.chomp
    break if valid_word?(noun)
  end

  loop do
    puts "Enter a verb: "
    verb = gets.chomp
    break if valid_word?(verb)
  end

  loop do
    puts "Enter an adjective: "
    adjective = gets.chomp
    break if valid_word?(adjective)
  end

  loop do
    puts "Enter an adverb: "
    adverb = gets.chomp
    break if valid_word?(adverb)
  end

  puts "Remember the one time where you #{adverb} took your #{adjective} " + 
       "#{noun}? How come you still #{verb} like that?"
end

madlibs

