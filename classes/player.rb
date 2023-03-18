class Player
  attr_reader :name
  attr_accessor :hand

  def initialize(name:)
    @name = name
    @hand = []
  end

  def draw_card(card)
    hand << card
  end

  def highest_power
    return 0 if hand_incomplete?

    cards.pluck(:power).max
  end

  def total_point
    return 0 if hand_incomplete?

    cards.pluck(:value).sum
  end

  def hand_incomplete?
    cards.size < 3
  end
end
