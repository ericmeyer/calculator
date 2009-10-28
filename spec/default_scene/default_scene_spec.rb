require File.expand_path(File.dirname(__FILE__) + "/../spec_helper")

describe "Default Scene" do

  uses_limelight :scene => "default_scene"
  
  it "should have inputs for the numbers" do
    0.upto(9) do |number|
      button = scene.find(number)
      button.should_not be_nil
      button.name.should == "calculator_button"
      button.text.should == number.to_s
    end
  end

  it "should have a display" do
    scene.find("display").should_not be_nil
  end

  it "should have a buttons for the functions" do
    scene.find("plus").should_not be_nil
    scene.find("minus").should_not be_nil
    scene.find("multiply").should_not be_nil
    scene.find("divide").should_not be_nil
  end
  
  it "should have an equals button" do
    equals = scene.find("equals")
    equals.should_not be_nil
    equals.name.should == "calculator_equals"
  end
  
  it "should have a clear button" do
    clear = scene.find("clear")
    clear.should_not be_nil
    clear.name.should == "calculator_clear"
  end

end