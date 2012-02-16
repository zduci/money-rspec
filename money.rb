class Money
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end


  def ==(money)
    @amount == money.amount && money.class == self.class
  end
end
