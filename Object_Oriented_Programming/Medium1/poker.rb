# Use the previous Deck and Card class
# Use those calsses to evaluate poer hands
# Create a class, PokerHand that takes 5 cards from a Deck of Cards
# Evaluates those Poker hand
# Use the follow skeleton for PokerHand
class PokerHand
  attr_reader :pokerhand

  def initialize(deck)
    @pokerhand = deal_hand(deck)
  end

  def deal_hand(deck)
    hand = []
    5.times {hand << deck.draw }
    hand
  end

  def print
    puts @pokerhand
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  def hand_ranks
    pokerhand.map(&:convert_card_name).sort
  end

  def count_ranks(number)
    pokerhand.any? { |card| hand_ranks.count(card.rank) == number }
  end

  def royal_flush?
    flush? && hand_ranks == [10, 11, 12, 13, 14]
  end

  def straight_flush?
    flush? && straight?
  end

  def four_of_a_kind?
    count_ranks(4)
  end

  def full_house?
    count_ranks(3) && count_ranks(2)
  end

  def flush?
    pokerhand.all? { |card| card.suit == pokerhand[0].suit }
  end

  def straight?
    first = hand_ranks.first
    hand_ranks == [first, first+1, first+2, first+3, first+4]
  end

  def three_of_a_kind?
    count_ranks(3)
  end

  def two_pair?
    pairs = []
    pokerhand.each {|card| pairs << card.rank if hand_ranks.count(card.rank) == 2 }
    pairs.uniq.size == 2
  end

  def pair?
    count_ranks(2)
  end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    new_deck
  end

  def draw
    new_deck if @deck.empty?
    @deck.pop
  end

  private

  def new_deck
    @deck = RANKS.product(SUITS).map do |rank, suit|
      Card.new(rank, suit)
    end
    
    @deck.shuffle!
  end
end

class Card
  include Comparable
  attr_reader :rank, :suit

  FACE_CARD_VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def <=>(other_card)
    convert_card_name <=> other_card.convert_card_name
  end

  def convert_card_name
    FACE_CARD_VALUES.fetch(rank, rank)
  end
end

hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.

hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'


