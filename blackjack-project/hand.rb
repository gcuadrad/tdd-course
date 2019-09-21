class Hand
  attr_accessor :dealt_card
  def initialize
    @dealt_card = []
  end

  def add_card(card)
    @dealt_card.push(card)
  end

  def get_value
    # get rank of cards and put in an array
    card_ranks = []
    dealt_card.each { |card| card_ranks.push(card.rank) }

    value = 0
    card_ranks.each do |rank|

    end
  end
end
