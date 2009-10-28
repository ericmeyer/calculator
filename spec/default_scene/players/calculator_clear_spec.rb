require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "CalculatorClear" do
  uses_limelight :scene => "default_scene"

  it "should clear the display" do
    scene.find("display").text = "Not Empty"
    scene.find("clear").mouse_clicked(nil)
    
    scene.find("display").text.should be_empty
  end
end