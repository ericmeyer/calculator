require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "CalculatorNumber" do
  uses_limelight :scene => "default_scene"
  
  it "should respond to the mouse_clicked event" do
    scene.find("1").mouse_clicked(nil)
  end
end