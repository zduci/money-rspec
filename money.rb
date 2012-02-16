class Money
  attr_accessor :amount

  def ==(money)
    @amount == money.amount && money.class == self.class
  end
end
