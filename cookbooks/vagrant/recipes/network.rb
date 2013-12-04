# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: vagrant
# Recipe:: network
#

cookbook_file '/etc/sysconfig/network-scripts/ifcfg-eth0' do
  source 'ifcfg-eth0'
end
