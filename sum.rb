class Sum
  attr_reader :augend, :addend
  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  def reduce(bank, to)
    Money.new(@augend.reduce(bank, to).amount +
              @addend.reduce(bank, to).amount,
              to)
  end
end
