require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "CalculatorEquals" do
  uses_limelight :scene => "default_scene"
  
  it "should display the result of the calculation" do
    scene.find("display").text = "12+35"
    scene.find("equals").mouse_clicked(nil)
    
    scene.find("display").text.should == "47"
  end
  
  it "should handle bad input data" do
    scene.find("display").text = "12+"
    scene.find("equals").mouse_clicked(nil)
    
    scene.find("display").text.should == ""
  end
end