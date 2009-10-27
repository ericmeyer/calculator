require File.expand_path(File.dirname(__FILE__) + "/../spec_helper")

describe "Default Scene" do

  uses_limelight :scene => "default_scene"
  
  it "should have inputs for the numbers" do
    0.upto(9) do |number|
      button = scene.find(number)
      button.should_not be_nil
      button.name.should == "calculator_number"
      button.text.should == number.to_s
    end
  end

  it "should have a display" do
    scene.find("display").should_not be_nil
  end

  it "should have a plus button" do
    scene.find("plus").should_not be_nil
  end
  
  it "should have an equals button" do
    equals = scene.find("equals")
    equals.should_not be_nil
    equals.name.should == "calculator_equals"
  end

end