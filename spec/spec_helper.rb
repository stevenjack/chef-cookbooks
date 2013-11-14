require 'bundler/setup'
require 'chefspec'

RSpec.configure do |config|
  config.cookbook_path = 'cookbooks'

  config.log_level = :warn

  config.platform = 'centos'
  config.version = '5.9'
end
