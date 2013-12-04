# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: vagrant
# Recipe:: tty
#

execute 'disable requiretty' do
  command "sed -i 's/^Defaults\s*requiretty/# Defaults requiretty/' /etc/sudoers"
end
