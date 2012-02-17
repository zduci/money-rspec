require './money'
describe Money, 'dollar' do
  before :all do
    @dollar = Money.dollar 5
  end

  it 'correctly multiplies by anything' do
    @dollar.times(2) == Money.dollar(10)
    @dollar.times(3) == Money.dollar(15) 
  end
  
  it 'does equality' do 
    @dollar.should == Money.dollar(5)
    @dollar.should_not == Money.dollar(6)
  end
  
  it 'returns the correct currency' do
    @dollar.currency.should be :USD
  end 

  it 'correctly adds dollars' do
    @dollar.plus(Money.dollar(5)).should == Money.dollar(10)
  end
end

describe Money, 'franc' do
  before :all do
    @franc = Money.franc 5
  end
 
  it 'correctly multiplies by anything' do 
    @franc.times(2) == Money.franc(10)
    @franc.times(3) == Money.franc(15) 
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
