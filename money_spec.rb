require './sum'
require './bank'
require './money'
describe Money, 'dollar' do
  before :each do
    @dollar = Money.dollar(5)
  end

  it 'correctly multiplies by numbers' do
    @dollar.times(2).should == Money.dollar(10)
    @dollar.times(3).should == Money.dollar(15) 
  end
  
  it 'does equality' do 
    @dollar.should == Money.dollar(5)
    @dollar.should_not == Money.dollar(6)
  end
  
  it 'returns the correct currency' do
    @dollar.currency.should be :USD
  end 
end

describe Bank do
  before :each do
    @dollar = Money.dollar(5)
    @bank = Bank.new
  end
  
  it 'correctly reduces money' do
    @bank.reduce(@dollar, :USD).should == @dollar
  end

  it 'correctly reduces dollar sums' do
    sum = @dollar.plus(@dollar) 
    @bank.reduce(sum, :USD).should == Money.dollar(10)
    sum = @dollar.plus Money.dollar(10)
    @bank.reduce(sum, :USD).should == Money.dollar(15)
  end

  it 'correctly reduces money sums' do
    sum = @dollar.plus(Money.franc(10))
    @bank.reduce(sum, :USD).should == Money.dollar(10)
  end
  it 'correctly adds rates' do
    @bank.add_rate(:USD, :LEI, 4)
    @bank.get_rate(:USD, :LEI).should == 4
    @bank.get_rate(:LEI, :USD).should == 0.25 
  end
end

describe Sum do
  it 'creates a sum' do
    dollar = Money.dollar(5)
    sum = dollar.plus(dollar)
    sum.augend.should == Money.dollar(5) 
    sum.addend.should == Money.dollar(5)
  end
end

describe Money, 'franc' do
  before :each do
    @franc = Money.franc(5)
  end
 
  it 'correctly multiplies by numbers' do 
    @franc.times(2).should == Money.franc(10)
    @franc.times(3).should == Money.franc(15) 
  end

  it 'does equality' do 
    @franc.should == Money.franc(5)
    @franc.should_not == Money.franc(6)
  end

  it 'returns the correct currency' do
    @franc.currency.should == :CHF
  end 

end  

describe Money do
  it 'should distinguish dollars from francs' do
    Money.dollar(5).should_not == Money.franc(5)
  end
end 
