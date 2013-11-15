# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: cleanup
# Recipe:: var
#

execute 'clean up /var/cache/yum' do
  command 'rm -rf /var/cache/yum/*'
end

execute 'clean up /var/lib/dhclient' do
  command 'rm -rf /var/lib/dhclient/*'
end
