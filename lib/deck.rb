
# deck.rb

require_relative 'card'

class Deck
  attr_accessor :cards

  def initialize
    @cards = []

    [:hearts, :spades, :clubs, :diamonds].each do |suit|
      (1..13).each do |value|
        @cards << Card.new(value, suit)
      end
    end

  end

  def draw
    if @cards.empty?
      raise ArgumentError, 'There is no card in deck.'
    else
      return @cards.delete_at(rand(count))
    end
  end

  def shuffle
    if @cards.empty?
      raise ArgumentError, 'There is no card in deck.'
    else
      return @cards.shuffle!
    end
  end

  def count
    if @cards.empty?
      raise ArgumentError, 'There is no card in deck.'
    else
      return @cards.length
    end
  end
end

