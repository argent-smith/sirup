$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require "rubygems"
require "bundler/setup"

require 'rspec'

require 'sirup'

RSpec.configure do |config|
  config.fail_fast = true
end
