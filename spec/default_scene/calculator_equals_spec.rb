require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "CalculatorEquals" do
  uses_limelight :scene => "default_scene"
  
  let(:calculator) {mock("Calculator", :press_equals => nil, :result => nil)}
  
  before(:each) do
    scene.production.calculator = calculator
  end
  
  it "should press equals on the calculator" do
    calculator.should_receive(:press_equals)
    
    scene.find("equals").mouse_clicked(nil)
  end
  
  it "should display the result" do
    calculator.should_receive(:result).and_return(456)
    scene.find("equals").mouse_clicked(nil)
    
    scene.find("display").text.should == "456"
  end
end