require "deck"

RSpec.describe Deck do
  
  describe "#initialize" do
    subject(:deck) { Deck.new }

    it "creates 52 cards" do 
      expect(deck.stack.length).to eq(52)
    end
    
    it "Doesn't have repeats" do 
      expect(deck.stack).to eq(deck.stack.uniq)
    end


  end
end