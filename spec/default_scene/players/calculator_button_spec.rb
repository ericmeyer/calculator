require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "CalculatorButton" do
  uses_limelight :scene => "default_scene"
  
  let(:display) { scene.find("display") }
  
  context "with an empty display" do
    it "should set the display text" do
      scene.find(1).mouse_clicked(nil)
      
      display.text.should == "1"
    end
  end
  
  context "with a non empty display" do
    it "should append the text on mouse_clicked" do
      display.text = "1"
      scene.find("plus").mouse_clicked(nil)
      
      scene.find("display").text.should == "1+"
    end
  end
end