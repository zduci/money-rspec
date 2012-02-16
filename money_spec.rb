require './dollar'

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
