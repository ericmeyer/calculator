require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "CalculatorNumber" do
  uses_limelight :scene => "default_scene"
  
  it "should set the text of the display" do
    scene.find("1").mouse_clicked(nil)
    
    scene.find("display").text.should == "1"
  end
  
  it "should add the number to the list of operands" do
    scene.find("1").mouse_clicked(nil)
    
    scene.production.operands.should == [1]
  end
end