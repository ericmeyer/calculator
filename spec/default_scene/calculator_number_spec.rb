require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "CalculatorNumber" do
  uses_limelight :scene => "default_scene"
  
  let(:calculator) {mock("Calculator", :press_number => nil)}
  
  before(:each) do
    scene.production.calculator = calculator
  end
  
  it "should press a number on the calculator" do
    calculator.should_receive(:press_number).with(5)
    
    scene.find("5").mouse_clicked(nil)
  end
  
  it "should set the text of the display" do
    scene.find("1").mouse_clicked(nil)
    
    scene.find("display").text.should == "1"
  end
  
  it "should add the number to the list of operands" do
    scene.find("1").mouse_clicked(nil)
    
    scene.production.operands.should == [1]
  end
end