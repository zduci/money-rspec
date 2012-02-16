require './dollar'
require './franc'

describe Dollar do
  it 'correctly multiplies by anything' do
    dollar = Dollar.new 5
    dollar.times(2) == Dollar.new(10)
    dollar.times(3) == Dollar.new(15) 
  end
  
  it 'does equality' do 
    dollar = Dollar.new 5
    dollar.should == Dollar.new(5)
    dollar.should_not == Dollar.new(6)
  end
end

describe Franc do
  it 'correctly multiplies by anything' do 
    franc = Franc.new 5
    franc.times(2) == Franc.new(10)
    franc.times(3) == Franc.new(15) 
  end
end  

describe Dollar, Franc do
  it 'should distinguish dollars from francs' do
    Dollar.new(5).should_not == Franc.new(5)
  end
end 
