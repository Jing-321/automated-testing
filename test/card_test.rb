require_relative 'test_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      # Test to ensure that to_s works for cards values 2-10
      # for example:  "2 of diamonds"
      #
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (2..10).each do |value|
          card = Card.new(value, suit)
          expect(card.to_s).must_be_instance_of String
        end
      end



        card_1 = Card.new(3, :clubs)
        expect(card_1.to_s).must_equal "3 of clubs"

    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      # Test to ensure that to_s works for cards values 1, and 11-13
      # For example: "Queen of hearts"
      # The current implementation of to_s does not address this feature
      # Write the test, see it fail, then modify to_s to make it pass!
      # (Consider writing a helper method!)

      #
      card_1 = Card.new(1, :clubs)
      expect(card_1.to_s).must_equal "Ace of clubs"

      card_1 = Card.new(11, :hearts)
      expect(card_1.to_s).must_equal "Jack of hearts"

      card_1 = Card.new(12, :spades)
      expect(card_1.to_s).must_equal "Queen of spades"

      card_1 = Card.new(13, :diamonds)
      expect(card_1.to_s).must_equal "King of diamonds"
    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
      card_1 = Card.new(12, :spades)
      expect(card_1.value).must_equal 12

      card_1 = Card.new(3, :clubs)
      expect(card_1.value).must_equal 3
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      card_1 = Card.new(12, :spades)
      expect(card_1.suit).must_equal :spades

      card_1 = Card.new(13, :diamonds)
      expect(card_1.suit).must_equal :diamonds

      card_1 = Card.new(11, :hearts)
      expect(card_1.suit).must_equal :hearts

      card_1 = Card.new(3, :clubs)
      expect(card_1.suit).must_equal :clubs
    end
  end

end
