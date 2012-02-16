require './dollar'
require './franc'

describe Dollar do
  it 'correctly multiplies by anything' do
    dollar = Money.dollar 5
    dollar.times(2) == Money.dollar(10)
    dollar.times(3) == Money.dollar(15) 
  end
  
  it 'does equality' do 
    dollar = Money.dollar 5
    dollar.should == Money.dollar(5)
    dollar.should_not == Money.dollar(6)
  end
end

describe Franc do
  it 'correctly multiplies by anything' do 
    franc = Money.franc 5
    franc.times(2) == Money.franc(10)
    franc.times(3) == Money.franc(15) 
  end

  it 'does equality' do 
    dollar = Money.franc 5
    dollar.should == Money.franc(5)
    dollar.should_not == Money.franc(6)
  end

end  

describe Dollar, Franc do
  it 'should distinguish dollars from francs' do
    Money.dollar(5).should_not == Money.franc(5)
  end
  
end 
