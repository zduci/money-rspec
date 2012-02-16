require './money'
class Dollar < Money

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Money.new(amount * multiplier)
  end
  
  def ==(amount)
    @amount == amount
  end
end
