require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "CalculatorFunction" do
  uses_limelight :scene => "default_scene"
  
  let(:calculator) {mock("Calculator")}
  
  before(:each) do
    scene.production.calculator = calculator
  end
    
  it "should press a function on the calculator" do
    calculator.should_receive(:press_function).with("plus")

    scene.find("plus").mouse_clicked(nil)
  end
end