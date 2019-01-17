class Card 
  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def inspect
    "<#{self.class}: Suit: #{suit}, Value: #{value}>"
  end

  def ==(card)
    self.suit == card.suit && self.value == card.value
  end

  def self.suits
    [:h, :d, :s, :c]
  end
  
  def self.values
    (1..13).to_a
  end
#commit
end

