require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "CalculatorFunction" do
  uses_limelight :scene => "default_scene"
  
  it "should respond to the mouse_clicked event" do
    scene.find("plus").mouse_clicked(nil)
  end
end