# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: services
# Recipe:: default
#

node[:services][:services].each do |s|
  service s do
    action [:enable]
  end
end
