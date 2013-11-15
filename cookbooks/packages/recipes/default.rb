# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: packages
# Recipe:: default
#

execute 'update packages' do
  command 'yum -y update'
end

node[:packages][:to_install].each do |p|
  package p do
    action :install
  end
end
