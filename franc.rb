class Franc
  attr_accessor :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Franc.new(amount * multiplier)
  end
  
  def ==(amount)
    @amount == amount
  end
end
