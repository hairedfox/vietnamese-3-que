require_relative('./player.rb')
require_relative('./card.rb')

class Game
  attr_accessor :players

  CARD_NUMBERS = [1, 2, 3, 4, 5, 6, 7, 8, 9].freeze
  CARD_SUITS = %w[spade club diamond heart].freeze

  def initialize
    @players = []
    @deck = build_deck
  end

  def add_player(name)
    players << Player.new(name: name)
  end

  def build_deck
    deck = []

    CARD_NUMBERS.each do |number|
      CARD_SUITS.each do |suit|
        card = Card.new(value: number, suit: suit)

        deck << card
      end
    end

    deck
  end
end
