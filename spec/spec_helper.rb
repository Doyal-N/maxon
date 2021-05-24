require 'simplecov'

SimpleCov.profiles.define 'config' do
  add.filter '.github/'
  add.filter 'spec/'
  add.filter 'lib/maxon/version'
end

SimpleCov.start

if ENV['CI'] == true
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end
