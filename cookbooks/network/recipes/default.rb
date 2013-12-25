# Author:: Steven Jack(<stevenmajack@gmail.com)
# Cookbook Name:: network
# Recipe:: network
#

cookbook_file '/etc/sysconfig/network' do
    source 'network'
end
