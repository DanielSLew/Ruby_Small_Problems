# Update the following class so you can determine lowest ranking and highest ranking
# cards in an Array of Card objects

# class Card
#   attr_reader :rank, :suit

#   def initialize(rank, suit)
#     @rank = rank
#     @suit = suit
#   end
# end

# suits have no relevance to high or low, if two are the same, return
# one matching of the card, doesn't matter which one

# Create a #to_s method that returns a String rep of the card "4 of Clubs". etc.

# Further exploration: Include suit in ranking of cards

class Card
  include Comparable

  FACE_CARD_VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }
  SUIT_VALUES = {'Diamonds' => 1, 'Clubs' => 2, 'Hearts' => 3, 'Spades' => 4 }
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def <=>(other_card)
    [value, suit_rank] <=> [other_card.value, other_card.suit_rank]
  end

  protected

  def suit_rank
    SUIT_VALUES[suit]
  end

  def value
    FACE_CARD_VALUES.fetch(rank, rank)
  end
end

cards = [Card.new(2, 'Hearts'),
         Card.new(10, 'Diamonds'),
         Card.new(10, 'Spades'),
         Card.new(10, 'Hearts')]
puts cards
puts cards.min == Card.new(2, 'Hearts')
puts cards.max == Card.new('Ace', 'Clubs')

cards = [Card.new(5, 'Hearts')]
puts cards.min == Card.new(5, 'Hearts')
puts cards.max == Card.new(5, 'Hearts')

cards = [Card.new(4, 'Hearts'),
         Card.new(4, 'Diamonds'),
         Card.new(10, 'Clubs')]
puts cards.min.rank == 4
puts cards.max == Card.new(10, 'Clubs')

cards = [Card.new(7, 'Diamonds'),
         Card.new('Jack', 'Diamonds'),
         Card.new('Jack', 'Spades')]
puts cards.min == Card.new(7, 'Diamonds')
puts cards.max.rank == 'Jack'

cards = [Card.new(8, 'Diamonds'),
         Card.new(8, 'Clubs'),
         Card.new(8, 'Spades')]
puts cards.min.rank == 8
puts cards.max.rank == 8



