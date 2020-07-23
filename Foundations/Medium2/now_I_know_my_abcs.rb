# Write a method that takes a string word as input
# Return true if the word can be spelled using the given spelling blocks
# Spelling blocks have 2 letters each and can only use 1 letter of that.

# Initialize the blocks as a hash, with an array of the two letters as key, and a marker as a value
# Set each marker to empty
# Iterate the word letter by letter using Array#Map
#   if the block with the matching letter is available then mark it as used
#   Use implicit return to return true if the block was available
#   return false if the mapped array includes any 'False'
require 'pry'
EMPTY_BLOCK = ''
USED_BLOCK = 'X'
BLOCKS = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'],
         ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'],
         ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def initialize_blocks
  BLOCKS.each_with_object({}) do |block, hash|
    hash[block] = EMPTY_BLOCK
  end
end

def available_letters(blocks)
  blocks.select { |block, _| blocks[block] == (EMPTY_BLOCK) }.keys.flatten
end

def update_blocks!(blocks, letter)
  blocks.each do |block, _|
    blocks[block] = USED_BLOCK if block.include?(letter)
  end
end

def block_word?(word)
  blocks = initialize_blocks
  !word.chars.map do |letter|
    !!update_blocks!(blocks, letter) if available_letters(blocks).include?(letter.upcase)
  end.include?(nil)
end

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

# More suscinct solution:

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end
