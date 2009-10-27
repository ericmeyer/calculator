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

end