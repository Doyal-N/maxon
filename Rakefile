require 'rake'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

task default: :spec

RSpec::Core::RakeTask.new(:spec)

RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-performance'
  task.requires << 'rubocop-rspec'
end
