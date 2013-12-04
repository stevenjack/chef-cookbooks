# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: vagrant
# Recipe:: network
#

log "message" do
  message node[:platform_version]
  level :info
end

cookbook_file "/etc/sysconfig/network-scripts/ifcfg-eth0" do
  source "ifcfg-eth0"
end
