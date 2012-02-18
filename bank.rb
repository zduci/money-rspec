class Bank
  def initialize
    @rates = {}
    add_rate(:USD, :CHF, 2)
  end

  def reduce(expression, currency)
    expression.reduce self, currency
  end

  def add_rate(from , to, rate)
    @rates[[from, to]] = rate
    @rates[[to, from]] = 1.0/rate
  end

  def get_rate(from, to)
    @rates[[from, to]]
  end
end
