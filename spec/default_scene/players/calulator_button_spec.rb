require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "CalculatorButton" do
  uses_limelight :scene => "default_scene"
  
  context "with an empty display" do
    it "should set the display text" do
      scene.find(1).mouse_clicked(nil)
      
      scene.find("display").text.should == "1"
    end
  end
end