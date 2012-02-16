require './dollar'

describe Dollar do
  it 'correctly multiplies by anything' do
    dollar = Dollar.new 5
    product = dollar.times 2
    product.should == Dollar.new(10)
    product = dollar.times 3
    product.should == Dollar.new(15) 
  end
  
  it 'does equality' do 
    dollar = Dollar.new 5
    dollar.should == (Dollar.new 5)
    dollar.should_not == Dollar.new(6)
  end
end
