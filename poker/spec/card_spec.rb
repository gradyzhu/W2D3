require 'card'

RSpec.describe Card do 

  describe "#initialize" do
    subject(:card) {Card.new(:h, "10")}
    it "creates instance variable of suit" do
      expect(card.suit).to eq(:h)
    end
    it "creates instance variable of value" do 
      expect(card.value).to eq("10")
    end
  end
  
end


