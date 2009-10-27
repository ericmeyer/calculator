require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "CalculatorEquals" do
  uses_limelight :scene => "default_scene"

  context "two operands" do
    it "should add them" do
      scene.production.operands = [2, 5]
      scene.find("equals").mouse_clicked(nil)
    
      scene.find("display").text.should == "7"
    end
  end
end