require_relative "card"

class Deck
  attr_reader :stack

  def initialize
    @stack = Deck.create_stack
  end

  def self.create_stack
    stack =  []
    Card.suits.each do |suit|
      Card.values.each do |value|
        stack << Card.new(suit, value)
      end
    end
    stack.shuffle
  end

end
