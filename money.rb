class Money
  attr_accessor :amount, :currency
  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def ==(money)
    @amount == money.amount && money.currency == self.currency
  end

  def plus(money)
    Money.new money.amount + @amount, @currency 
  end

  def times(multiplier)
    Money.new amount * multiplier, @currency
  end

  def self.dollar(amount)
    Money.new amount, :USD
  end

  def self.franc(amount)
    Money.new amount, :CHF
  end
end
