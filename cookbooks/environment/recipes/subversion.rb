# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: environment
# Recipe:: subversion
#

directory '/root/.subversion' do
  action :create

  owner 'root'
  group 'root'
end

file '/root/.subversion/servers' do
  action :touch

  owner 'root'
  group 'root'
end
