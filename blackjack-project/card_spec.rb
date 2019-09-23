require_relative 'card'

RSpec.describe Card do
  before do
    suit = "Diamonds"
    rank = '8'
    @card = Card.new(suit, rank)
  end

  it 'response to suit' do
    expect(@card).to respond_to(:suit)
  end

  it 'response to rank' do
    expect(@card).to respond_to(:rank)
  end

  it 'response to show' do
    expect(@card).to respond_to(:show)
  end

  it 'show method returns true' do
    expect(@card.show).to eq(true)
  end

  it 'suit method returns Diamonds' do
    expect(@card.suit).to eq('Diamonds')
  end

  it 'rank method returns 8' do
    expect(@card.rank).to eq('8')
  end

  it 'output rank and suit if show if true' do
    expect("#{@card}").to eq("#{@card.rank} of #{@card.suit}")
  end

  it 'does not output rank and suit if show if false' do
    @card.show = false
    expect("#{@card}").to eq("")
  end
end
