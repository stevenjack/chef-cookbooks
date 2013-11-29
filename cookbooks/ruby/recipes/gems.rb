# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: ruby
# Recipe:: gem
#

node[:ruby][:gems].each do |gem|
  execute "install #{gem}" do
    command "gem install #{gem}"
  end
end

