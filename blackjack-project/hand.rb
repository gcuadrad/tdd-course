class Hand
  VALUES = { '2': 2,
             '3': 3,
             '4': 4,
             '5': 5,
             '6': 6,
             '7': 7,
             '8': 8,
             '9': 9,
             '10': 10,
             'Jack': 10,
             'Queen': 10,
             'King': 10,
             'Ace': 1 }
  attr_accessor :dealt_card
  def initialize
    @dealt_card = []
  end

  def add_card(card)
    @dealt_card.push(card)
  end

  def get_value
    # get rank of cards and put in an array
    # card_ranks = []
    # dealt_card.each { |card| card_ranks.push(card.rank) }
    card_ranks = dealt_card.map { |card| card.rank }
    # value = 0
    # card_ranks.each do |rank|
    #   rank = rank.to_sym
    #   value += VALUES[rank]
    # end
    value = card_ranks.reduce(0) { |acc, rank| acc + VALUES[rank.to_sym] }
    value += 10 if card_ranks.include?('Ace') && value + 10 <= 21
    value
  end
end
