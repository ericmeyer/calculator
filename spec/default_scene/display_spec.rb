# require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
# 
# describe "Display" do
#   uses_limelight :scene => "default_scene"
#   
#   let(:calculator) {mock("Calculator", :register_display_observer => nil)}
#   let(:display) {scene.find("display")}
#   
#   before(:each) do
#     scene.production.calculator = calculator
#   end
#   
#   it "should register itself as an observer of the calculator when it is cast" do
#     calculator.should_receive(:register_display_observer).with(display)
#     
#     display.casted
#   end
# 
#   it "should set the text on observe" do
#     display.observe("some message")
#     
#     display.text.should == "some message"
#   end
# end