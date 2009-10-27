require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require "calculator"

describe Calculator do

  let(:calculator) {Calculator.new}
  
  it "should have no operands on init" do
    calculator.operands.should == []
  end
  
  context "with no operands" do
    it "should add one number to the list of operands" do
      calculator.press_number(1)
      calculator.operands.should == [1]
    end
    
    it "should append numbers to the current number" do
      calculator.press_number(1)
      calculator.press_number(2)
      
      calculator.operands.should == [12]
    end
  end
  
  context "with one operand" do
    before(:each) do
      calculator.press_number(6)
    end

    it "should start a new operand after a function press" do
      calculator.press_function("+")
      calculator.press_number(3)
      calculator.press_number(4)
      
      calculator.operands.should == [6, 34]
    end
  end
  
  context "two operands" do
    before(:each) do
      calculator.press_number(6)
      calculator.press_function("+")
      calculator.press_number(3)
    end

    it "should add two numbers when pressing equals" do
      calculator.press_equals
      calculator.result.should == 9
    end
  end
  
end