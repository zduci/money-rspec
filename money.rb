class Money
  attr_accessor :amount, :currency
  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def ==(money)
    @amount == money.amount && money.class == self.class
  end

  def times(multiplier)
    Money.new amount * multiplier, @currency
  end

  def self.dollar(amount)
    Dollar.new amount, :USD
  end

  def self.franc(amount)
    Franc.new amount, :CHF
  end
end
