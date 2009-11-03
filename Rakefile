require 'rubygems'

task :spec do
  system "jruby -S spec spec"
end

task :features do
  system "jruby -S cucumber features"
end

desc "Generates the llp for the production."
task :llp, :name do |t, args|
  if args.name
    system "jruby -S limelight pack production -n #{args.name}"
  else
    puts "Usage: rake llp[<name>]"
  end
end

task :build => [:spec, :features] do
end