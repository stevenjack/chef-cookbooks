# Author:: Simon Thulbourn(<simon.thulbourn@bbc.co.uk)
# Cookbook Name:: cleanup
# Recipe:: tmp
#

execute 'clean up /tmp' do
  command 'rm -rf /tmp/*'
end
