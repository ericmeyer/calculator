require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "CalculatorNumber" do

  uses_limelight :scene => "default_scene"
  
  let(:calculator) {mock("Calculator", :press_number => nil)}
  let(:display) {scene.find("display")}
  
  before(:each) do
    scene.production.calculator = calculator
  end
  
  it "should press a number on the calculator" do
    calculator.should_receive(:press_number).with(5)
    
    scene.find("5").mouse_clicked(nil)
  end
  
  it "should set the text of the display" do
    calculator.should_receive(:display).and_return(12345)
    
    scene.find("5").mouse_clicked(nil)
    
    display.text.should == "12345"
  end
end