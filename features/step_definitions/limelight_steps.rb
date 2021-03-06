$: << File.expand_path(File.dirname(__FILE__) + "/../../production/lib")
$: << File.expand_path(File.dirname(__FILE__) + "/../../production")

require File.expand_path(File.dirname(__FILE__) + "/../support/env")
require 'limelight/specs/spec_helper'
require 'rubygems'

$PRODUCTION_PATH = File.expand_path(File.dirname(__FILE__) + "/../../production")
Gem.use_paths(File.join($PRODUCTION_PATH , "__resources", "gems"), Gem.default_path)

Dir.glob(File.join("__resources", "gems", "gems", "**", "lib")).each do |dir|
  $: << dir
end

Before do
  Limelight::Main.initializeTestContext
  Limelight::Specs.producer = Limelight::Producer.new($PRODUCTION_PATH)
  Limelight::Specs.producer.production.extend(MockProduction)
  Limelight::Specs.producer.open
end

#TODO - EWM - Figure out how to close limelight after each scenario properly.  Right now, one instance gets open per scenario.
# "After do" makes scenarios not run
at_exit do
  unless Limelight::Specs.producer.nil?
    Limelight::Specs.producer.theater.stages.each do |stage|
      frame = stage.instance_variable_get("@frame")
      frame.close if frame
    end
  end
end

def scene
  stage = Limelight::Specs.producer.theater.stages[0]
  return stage.current_scene
end

Transform /^prop "([^\"]*)"$/ do |prop_id|
  scene.find(prop_id)
end


Given /^I click "([^\"]*)"$/ do |prop_id|
  scene.find(prop_id).mouse_clicked(nil)
end

Then /^the prop "([^\"]*)" should have text of "([^\"]*)"$/ do |id, text|
  scene.find(id).text.should == text
end