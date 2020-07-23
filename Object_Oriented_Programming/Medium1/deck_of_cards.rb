# Create a Deck class that contains all of the 52 cards
# Deck should provide a #draw method to draw one card at random
# if the deck runs out of cards, the deck should reset itself with 52 cards


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
      Card.new(rank, suit) }
    end
    
    @deck.shuffle!
  end
end

class Card
  attr_reader :rank, :suit

  FACE_CARD_VALUES = {'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def ==(other_card)
    rank == other_card.rank
  end

  def <=>(other_card)
    convert_card_name <=> other_card.convert_card_name
  end

  private

  def convert_card_name
    FACE_CARD_VALUES.fetch(rank, rank)
  end
end

