class Money
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def ==(money)
    @amount == money.amount && money.class == self.class
  end

  def times(multiplier)
    Money.new(amount * multiplier)
  end

  def self.dollar(amount)
    Dollar.new amount
  end

  def self.franc(amount)
    Franc.new amount
  end
end
