require 'rubygems'

task :spec do
  system "jruby -S spec spec"
end

task :features do
  system "jruby -S cucumber features"
end

task :llp do
  system "jruby -S limelight pack limelight_docs"
end