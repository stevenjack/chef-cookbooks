# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: vagrant
# Recipe:: dd
#

execute 'dd to EMPTY' do
  command 'dd if=/dev/zero of=/EMPTY bs=1M'
end

file '/EMPTY' do
  action :delete
end
