class Franc < Money

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Money.new(amount * multiplier)
  end
end
