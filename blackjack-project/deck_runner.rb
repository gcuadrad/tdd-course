require_relative 'deck'

SUITS = %w(Spades Hearts Clubs Diamonds)
RANKS = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)

deck = Deck.new(SUITS, RANKS)
puts deck.shuffle
puts
puts 'Dealt card details'
card = deck.deal_card
puts card.to_s
