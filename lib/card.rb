
# card.rb

class Card
  attr_reader :value, :suit

  def initialize(value, suit)

    if (1..13).include? value
      @value = value
    else
      raise ArgumentError
    end

    if [:hearts, :spades, :clubs, :diamonds].include? suit
      @suit = suit
    else
      raise ArgumentError
    end

  end

  def to_s

    if [1, 11, 12, 13].include? @value
      case @value
      when 1
        return "Ace of #{@suit.to_s}"
      when 11
        return "Jack of #{@suit.to_s}"
      when 12
        return "Queen of #{@suit.to_s}"
      when 13
        return "King of #{@suit.to_s}"
      end
    else
      return "#{value} of #{@suit.to_s}"
    end

  end

end
