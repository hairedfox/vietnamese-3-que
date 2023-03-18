class Card
  OFFSET = 2
  MAX_POWER = 4
  ACE_VALUE = 10

  attr_reader :value, :suit, :power

  def initialize(value:, suit:)
    @value = value
    @suit = suit
    @power = calculate_power
  end

  private

  def calculate_power
    return ACE_VALUE + (MAX_POWER * (ACE_VALUE - OFFSET)) if value == 1

    value + (MAX_POWER * (value - OFFSET))
  end
end
