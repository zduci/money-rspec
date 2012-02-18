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
    Sum.new self, money 
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

  def reduce(bank, to)
    return self if @currency == to
    Money.new (@amount * bank.get_rate(@currency, to)), to 
  end
end
