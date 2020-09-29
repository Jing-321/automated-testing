require_relative 'test_helper'


describe Deck do
  let(:deck) {Deck.new}

  it "can create 52 card objects as attributes" do
    expect(deck.cards).must_be_instance_of Array
    expect(deck.cards.length).must_equal 52
    expect(deck.cards.first).must_be_instance_of Card
  end

  it "all cards are unique" do
    expect(deck.cards.uniq.length).must_equal deck.cards.length
  end

  it "draw a card" do
    expect(deck.draw).must_be_instance_of Card
  end

  # it "shuffle" do
  #   deck_1 = Deck.new
  #   deck_2 = Deck.new
  #   expect(deck_1.cards).must_equal deck_2.cards
  #   expect(deck_1.shuffle).wont_equal deck_2.cards
  # end
  #
  it "return a integer for count" do
    expect(deck.count).must_be_instance_of Integer
  end

  it "raise an ArgumentError while deck.cards is nil" do
    deck_1 = Deck.new
    deck_1.cards = []
    expect{deck_1.draw}.must_raise ArgumentError
    expect{deck_1.shuffle}.must_raise ArgumentError
    expect{deck_1.count}.must_raise ArgumentError
  end

end
