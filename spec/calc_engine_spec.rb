require_relative 'spec_helper'

describe 'basic calc_engine functions work' do

  before(:all) do
    @calc = CalcEngine.new
  end

  it 'should correctly add two numbers' do
    expect(@calc.add(1,2)).to eql(3)
    expect(@calc.add(100,424)).to eql(524)
    expect(@calc.add(7384,510)).to eql(7894)
  end

  it 'should correctly subtract two numbers' do
    expect(@calc).to respond_to(:subtract)
    expect(@calc.subtract(5,2)).to eql(3)
    expect(@calc.subtract(15,4)).to eql(11)
    expect(@calc.subtract(100,50)).to eql(50)
  end

  it 'should correctly multiply two numbers' do
    expect(@calc).to respond_to(:mult)
    expect(@calc.mult(5,2)).to eql(10)
    expect(@calc.mult(51,3)).to eql(153)
    expect(@calc.mult(11,11)).to eql(121)
  end

  it 'should correctly divide two numbers' do
    expect(@calc).to respond_to(:divide)
    expect(@calc.divide(10,2)).to eql(5)
    expect(@calc.divide(40,10)).to eql(4)
    expect(@calc.divide(175,25)).to eql(7)
  end

end
