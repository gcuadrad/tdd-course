require_relative 'card'
require_relative 'hand'

RSpec.describe Hand do
  before do
    @hand = Hand.new
  end

  it 'responds to deal_cards' do
    expect(@hand).to respond_to(:dealt_card)
  end

  describe '#add_card' do
    it 'responds to add_card' do
      expect(@hand).to respond_to(:add_card)
    end

    it 'returns the correct properties od cards added' do
      card1 = Card.new('Diamonds', 'Jack')
      card2 = Card.new('Clubs', 'Ace')

      @hand.add_card card1
      @hand.add_card card2

      expect(@hand.dealt_card.size).to eq(2)
      expect(@hand.dealt_card.first.suit).to eq('Diamonds')
      expect(@hand.dealt_card.first.rank).to eq('Jack')
      expect(@hand.dealt_card.last.suit).to eq('Clubs')
      expect(@hand.dealt_card.last.rank).to eq('Ace')
    end
  end

  describe '#get_value' do
    it 'responds to get_value' do
      expect(@hand).to respond_to(:get_value)
    end

    it 'returns the correct value with no Ace' do
      card1 = Card.new('Diamonds', 'Jack') # rank 10
      card2 = Card.new('Clubs', '9') # rank 9

      @hand.add_card card1
      @hand.add_card card2

      expect(@hand.get_value).to eq(19)
    end

    it 'returns the correct value with an Ace and a Jack' do

    end
  end

  describe 'hand output' do
    it 'returns the correct output if show is true for all cards' do

    end

    it 'returns the correct output if show is false for one card' do

    end
  end


end
