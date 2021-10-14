require './lib/card'
# require RSpec
#  require 'pry'; binding.pry

RSpec.describe Card do
  it 'exists' do
    #setup  + also execution...???
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    #assertion
    expect(card).to be_instance_of(Card)
    # tear down after test ran 
  end

  it 'has a question' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    # require 'pry'; binding.pry
    expect(card.question).to eq("What is the capital of Alaska?")
  end

  it 'has an answer' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card.answer).to eq("Juneau")
  end

  it 'has a category' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card.category).to eq(:Geography)
  end
end
